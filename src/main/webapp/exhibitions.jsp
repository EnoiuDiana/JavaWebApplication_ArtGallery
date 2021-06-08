<%--
  Created by IntelliJ IDEA.
  User: Diana
  Date: 13.01.2021
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ro-RO">

<head>

    <title>Exhibitions</title>

    <meta charset="UTF-16">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="description" content="Resurse-clasa9">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="styles\bootstrap4\bootstrap.min.css">

    <link href="plugins\fontawesome-free-5.0.1\css\fontawesome-all.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="styles\courses_styles.css">

    <link rel="stylesheet" type="text/css" href="styles\courses_responsive.css">


</head>
<body>

<div class="super_container">



    <header class="header d-flex flex-row">
        <div class="header_content d-flex flex-row align-items-center">
            <!-- Logo -->
            <div class="logo_container">
                <div class="logo">
                    <img src="images\logo1.png" alt="" width='104px'height='104px'>
                    <span>Art Galleria</span>
                </div>
            </div>

            <!-- Main Navigation -->
            <nav class="main_nav_container">
                <div class="main_nav">
                    <ul class="main_nav_list">
                        <li class="main_nav_item"><a href="home.jsp">Home</a></li>
                        <li class="main_nav_item">
                            <div class="dropdown">
                                <button class="dropbtn">Artworks</button>
                                <div class="dropdown-content">
                                    <a href="paintings.jsp">Paintings</a>
                                    <a href="sculptures.jsp">Sculptures</a>
                                    <a href="others.jsp">Others</a>
                                </div>
                            </div>
                        </li>
                        <li class="main_nav_item"><a href="artists.jsp">Artists</a></li>
                        <li class="main_nav_item"><a href="exhibitions.jsp">Exhibitions</a></li>
                        <li class="main_nav_item"><a href="about.jsp">About Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="header_side d-flex flex-row justify-content-center align-items-center">
			<span>
			   <ul>
				  <li style='font-size:18px; text-align:center;'><a href="myAccount.jsp">My Account</a></li>
			   </ul>
			</span>
        </div>

        <!-- Hamburger -->
        <div class="hamburger_container">
            <i class="fas fa-bars trans_200"></i>
        </div>

    </header>

    <!-- Menu -->
    <div class="menu_container menu_mm">

        <!-- Menu Close Button -->
        <div class="menu_close_container">
            <div class="menu_close"></div>
        </div>

        <!-- Menu Items -->
        <div class="menu_inner menu_mm">
            <div class="menu menu_mm">
                <ul class="menu_list menu_mm">
                    <li class="menu_item menu_mm"><a href="home.jsp">Home</a></li>
                    <li class="menu_item menu_mm"><a href="paintings.jsp">Artworks</a></li>
                    <li class="menu_item menu_mm"><a href="artists.jsp">Artists</a></li>
                    <li class="menu_item menu_mm"><a href="exhibitions.jsp">Exhibitions</a></li>
                    <li class="menu_item menu_mm"><a href="about.jsp">About Us</a></li>
                </ul>

                <!-- Menu Social -->

                <div class="menu_social_container menu_mm">
                    <ul class="menu_social menu_mm">
                        <li class="menu_social_item menu_mm"><a href="https://ro.pinterest.com/"><i class="fab fa-pinterest"></i></a></li>
                        <li class="menu_social_item menu_mm"><a href="https://ro.linkedin.com/"><i class="fab fa-linkedin-in"></i></a></li>
                        <li class="menu_social_item menu_mm"><a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a></li>
                        <li class="menu_social_item menu_mm"><a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="menu_social_item menu_mm"><a href="https://twitter.com/"><i class="fab fa-twitter"></i></a></li>
                    </ul>
                </div>

            </div>

        </div>

    </div>
    <!-- Home -->

    <div class="home">
        <div class="home_background_container prlx_parent">
            <div class="home_background prlx" style="background-image:url(images/exhibitions.jpg)"></div>
        </div>

    </div>

    <!-- Popular -->

    <div class="popular page_section">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title text-center">
                        <h1>Exhibitions</h1>
                    </div>
                </div>
            </div>

            <div class="row course_boxes">

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/exhibition1.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>

                            <div class="card-title"><a href="exhibition1.jsp"style="font-size: 18px">The Advent of The Artist</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5; font-size:17px;">Rose Simpson</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5;">San Francisco Museum of Modern Art</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>

                        </div>

                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/exhibition2.jpg" alt="https://unsplash.com/@kellybrito" style="height: 260px" >
                        <div class="card-body text-center">
                            <div class="card-title"><a href="exhibition2.jsp"style="font-size: 18px">Speech/Acts</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5;  font-size:17px;">Robert Smith</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5;">Institute of Contemporary Art</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>

                        </div>

                    </div>
                </div>


                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/exhibition3.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="exhibition3.jsp"style="font-size: 18px">R.I.S.E.: Nothing is Natural</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5; font-size:17px;">Sandra Christian</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>
                            <div class="card-text"><a href="#" style="color:#a5a5a5;">Reed College</a></div>
                            <div class="card-text"><a href="#" style="color:#f8f9fb;">____</a></div>

                        </div>

                    </div>
                </div>



            </div>

        </div>
    </div>


    <!-- Footer -->

    <footer class="footer">
        <div class="container">


            <!-- Footer Content -->

            <div class="footer_content">
                <div class="row">

                    <!-- Footer Column - About -->

                    <div class="col-lg-3 footer_col">

                        <!-- Logo -->

                        <div class="logo_container">
                            <div class="logo">
                                <img src="images\logo1.png" alt="" width='50px' height='50px'>
                                <span>Art Galleria</span>
                            </div>
                        </div>
                        <p class="footer_about_text">ArtGalleria is premier Online Art Gallery for buying affordable artworks online. With over 500 paintings to shop online, ArtGalleria offers you great variety of Artworks to choose from.</p>

                    </div>

                    <!-- Footer Column - Menu -->

                    <div class="col-lg-3 footer_col">
                        <div class="footer_column_title">Meniu</div>
                        <div class="footer_column_content">
                            <ul>
                                <li class="footer_list_item"><a href="index.html">Home</a></li>
                                <li class="footer_list_item"><a href="resurse9.html">Artworks</a></li>
                                <li class="footer_list_item"><a href="probleme9.html">Artists</a></li>
                                <li class="footer_list_item"><a href="subiecte.html">Exhibitions</a></li>
                                <li class="footer_list_item"><a href="iasi.html">About Us</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Footer Column - Usefull Links -->

                    <div class="col-lg-3 footer_col">
                        <div class="footer_column_title">Useful links</div>
                        <div class="footer_column_content">
                            <ul>
                                <li class="footer_list_item"><a href="termeni.html">Terms of Use</a></li>
                                <li class="footer_list_item"><a href="intrebari.html">FAQ</a></li>
                                <li class="footer_list_item"><a href="comunitate.html">Comunity</a></li>
                                <li class="footer_list_item"><a href="cookies.html">Cookies Policy</a></li>
                                <li class="footer_list_item"><a href="securitate.html">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Footer Column - Contact -->

                    <div class="col-lg-3 footer_col">
                        <div class="footer_column_title">Contact</div>
                        <div class="footer_column_content">
                            <ul>
                                <li class="footer_contact_item">
                                    <div class="footer_contact_icon">
                                        <img src="images\placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                    </div>
                                    944 Marshville Road, New York
                                </li>
                                <li class="footer_contact_item">
                                    <div class="footer_contact_icon">
                                        <img src="images\smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                    </div>
                                    845-617-9311
                                </li>
                                <li class="footer_contact_item">
                                    <div class="footer_contact_icon">
                                        <img src="images\envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
                                    </div>office@artgalleria.com
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>

            <!-- Footer Copyright -->

            <div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
                <div class="footer_copyright">
					<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All the rights reserved | Project realised by Andreea Ilie and Diana Enoiu </a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                </div>
                <div class="footer_social ml-sm-auto">
                    <ul class="menu_social">
                        <li class="menu_social_item"><a href="https://ro.pinterest.com/"><i class="fab fa-pinterest"></i></a></li>
                        <li class="menu_social_item"><a href="https://ro.linkedin.com/"><i class="fab fa-linkedin-in"></i></a></li>
                        <li class="menu_social_item"><a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a></li>
                        <li class="menu_social_item"><a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="menu_social_item"><a href="https://twitter.com/"><i class="fab fa-twitter"></i></a></li>
                    </ul>
                </div>
            </div>

        </div>

    </footer>

</div>

<script src="js\jquery-3.2.1.min.js"></script>
<script src="styles\bootstrap4\popper.js"></script>
<script src="styles\bootstrap4\bootstrap.min.js"></script>
<script src="plugins\greensock\TweenMax.min.js"></script>
<script src="plugins\greensock\TimelineMax.min.js"></script>
<script src="plugins\scrollmagic\ScrollMagic.min.js"></script>
<script src="plugins\greensock\animation.gsap.min.js"></script>
<script src="plugins\greensock\ScrollToPlugin.min.js"></script>
<script src="plugins\OwlCarousel2-2.2.1\owl.carousel.js"></script>
<script src="plugins\scrollTo\jquery.scrollTo.min.js"></script>
<script src="plugins\easing\easing.js"></script>
<script src="js\custom.js"></script>
<script src="js\teachers_custom.js"></script>

</body>
</html>
