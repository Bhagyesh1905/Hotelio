<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | Hotelio</title>

    <?php
    include "includes/head_links.php";
    ?>
    <link href="css/home.css" rel="stylesheet" />
</head>

<body>
    <?php
    include "includes/header.php";
    ?>

    <div class="banner-container">
        <h2 class="white pb-3">
            "Experience luxury, effortlessly with Hotelio."
        </h2>

        <form id="search-form" action="property_list.php" method="GET">
            <div class="input-group city-search">
                <input type="text" class="form-control input-city" id='city' name='city' placeholder="Enter your city to search for Hotel's" />
                <div class="input-group-append">
                    <button type="submit" class="btn btn-secondary">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>

    <div class="textbox">
        <p class="text">
            <span class="Bold">Welcome to Hotelio, </span> where luxury meets convenience in the world of hotel bookings.
            At Hotelio, we redefine the art of accommodation, offering a curated selection of exquisite hotels tailored to meet the discerning needs of every traveler.
            Our intuitive platform provides a seamless booking experience, allowing you to effortlessly explore and reserve the perfect stay for your next adventure.
            With Hotelio, your journey begins with a simple search, unveiling a world of unparalleled comfort and elegance. Whether you're seeking a tranquil retreat,
            a bustling city escape, or a beachside oasis, Hotelio ensures you find your ideal sanctuary.
            Our commitment to excellence extends beyond booking; we prioritize your comfort and satisfaction every step of the way.
            From our user-friendly interface to our dedicated customer support, Hotelio guarantees a stress-free experience from start to finish.
            Discover a world of luxury at your fingertips with Hotelio. Book your next unforgettable stay today and embark on a journey of unparalleled hospitality and sophistication."
        </p>
    </div>

    <div id="background_image">
    </div>

    <div class="page-container">
        <h1 class="city-heading">
            Major Cities
        </h1>
        <div class="row">
            <div class="city-card-container col-md">
                <a href="property_list.php?city=Delhi">
                    <div class="city-card rounded-circle">
                        <img src="img/delhi.png" class="city-img" />
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Mumbai">
                    <div class="city-card rounded-circle">
                        <img src="img/mumbai.png" class="city-img" />
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Bengaluru">
                    <div class="city-card rounded-circle">
                        <img src="img/bangalore.png" class="city-img" />
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Hyderabad">
                    <div class="city-card rounded-circle">
                        <img src="img/hyderabad.png" class="city-img" />
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Chennai">
                    <div class="city-card rounded-circle">
                        <img src="img/Chennai.png" class="city-img" />
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Indore">
                    <div class="city-card rounded-circle">
                        <img src="img/Indore.png" class="city-img" />
                    </div>
                </a>
            </div>
            <div class="city-card-container col-md">
                <a href="property_list.php?city=Pune">
                    <div class="city-card rounded-circle">
                        <img src="img/Indore.png" class="city-img" />
                    </div>
                </a>
            </div>

        

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Jaipur">
                    <div class="city-card rounded-circle">
                        <img src="img/Jaipur.png" class="city-img" />
                    </div>
                </a>
            </div>

        </div>
    </div>

    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/footer.php";
    ?>
</body>

</html>
