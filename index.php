<?php
  session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Student Accommodation Website</title>

  <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet" />
  <link href="css/common.css" rel="stylesheet" />
  <link href="css/index.css" rel="stylesheet" />
</head>

<body>
  <!-- Header Section -->
  <?php require "./includes/header.php"; ?>

  <div id="loading"></div>

  <div class="container-fluid pg-search-container">
    <div class="row justify-content-center mb-3 text-white">
      <div class="col-auto">
        <h2>&nbsp Happiness per Square Foot</h2>
      </div>
    </div>
    <!-- Search Bar -->
    <form action="property_list.php" method="GET">
      <div class="row justify-content-center">
        <div class="col-md-6 col-sm-8">
          <div class="input-group md-form form-sm form-2 pl-0">
            <input name="city" class="form-control my-0 py-1 red-border" type="text" placeholder="Enter your city to search for PGs" aria-label="Search">
            <div class="input-group-append">
              <button type="submit" class="btn btn-dark">
                <i class="fas fa-search text-grey" aria-hidden="true"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>

  <div class="city-container">
    <div class="city-caption">
      <h2>Major Cities</h2>
    </div>
    <div class="city-box">

      <?php
        $cities = ["Tirupati", "Amaravathi", "Bengaluru", "Chennai"];
        foreach ($cities as $city) {
          $image = strtolower($city);
          if ($city == "Bengaluru") $image .= " (1)";
          $imgPath = "./img/" . $image . ".png";
          echo '<div class="city-img">';
          if (isset($_SESSION["user_id"])) {
            echo '<a href="property_list.php?city=' . $city . '">';
          } else {
            echo '<a href="#" onclick="showLoginModal(); return false;">';
          }
          echo '<img src="' . $imgPath . '" alt="' . $city . '">';
          echo '</a></div>';
        }
      ?>

    </div>
  </div>

  <!-- Modal Pages -->
  <?php require "./includes/signup_modal.php"; ?>
  <?php require "./includes/login_modal.php"; ?>

  <!-- Footer -->
  <?php require "./includes/footer.php" ?>

  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/common.js"></script>

  <!-- JavaScript to trigger login modal -->
  <script>
    function showLoginModal() {
      alert("Please login to continue");
      $('#login-modal').modal('show');
    }
  </script>
</body>

</html>
