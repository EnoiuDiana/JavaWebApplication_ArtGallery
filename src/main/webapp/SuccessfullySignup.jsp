<%--
  Created by IntelliJ IDEA.
  User: Diana
  Date: 11.01.2021
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Diana
  Date: 11.01.2021
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ro-RO">
<head>
    <title>Login</title>
    <meta charset="utf-16">
    <meta name="description" content="Login">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_responsive.css">
    <link rel="stylesheet" type="text/css" href="styles/elements_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
    <link rel="stylesheet" type="text/css" href="styles/news_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
    <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

<div class="super_container">

    <!-- Header -->

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
                        <li class="main_nav_item"><a href="index.jsp">Home</a></li>
                        <li class="main_nav_item">
                            <div class="dropdown">
                                <button class="dropbtn">Artworks</button>
                                <div class="dropdown-content">
                                    <a href="index.jsp">Paintings</a>
                                    <a href="index.jsp">Sculptures</a>
                                    <a href="index.jsp">Others</a>
                                </div>
                            </div>
                        </li>
                        <li class="main_nav_item"><a href="index.jsp">Artists</a></li>
                        <li class="main_nav_item"><a href="index.jsp">Exhibitions</a></li>
                        <li class="main_nav_item"><a href="index.jsp">About Us</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="header_side d-flex flex-row justify-content-center align-items-center">
			<span>
			   <ul>
			      <li style='font-size:18px; text-align:center;'><a href="register.jsp" >Register</a></li>
				  <li style='font-size:18px; text-align:center;'><a href="index.jsp">Login</a></li>
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
                    <li class="menu_item menu_mm"><a href="index.jsp">Home</a></li>
                    <li class="menu_item menu_mm"><a href="index.jsp">Artworks</a></li>
                    <li class="menu_item menu_mm"><a href="index.jsp">Artists</a></li>
                    <li class="menu_item menu_mm"><a href="index.jsp">Exhibitions</a></li>
                    <li class="menu_item menu_mm"><a href="index.jsp">About Us</a></li>
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





    <!-- News -->


    <div class="news">
        <div class="container">
            <div class="row">

                <!-- News Post Column -->

                <div class="col-lg-8">

                    <div class="news_post_container">
                        <!-- News Post -->
                        <div class="news_post">

                            <div class="news_post_top">

                                <!-- Register -->


                                <div class="container-fluid">


                                    <!-- Search -->

                                    <div class="search_section d-flex flex-column align-items-center justify-content-center">
                                        <div class="search_background" style="background-image:url(images/search_background2.jpg);"></div>
                                        <div class="search_content text-center">
                                            <h1 class="search_title">Login</h1>
                                            <form id="search_form" class="search_form" action="login-servlet" method="post">
                                                <h3 class="register_login" style="color:green;">Your account has been successfully created. Now, please log in.</h3>
                                                <h3>     </h3>
                                                <h3>     </h3>
                                                <h3>     </h3>
                                                <h3>     </h3>
                                                <h3>     </h3>
                                                <input id="search_form_name" name = "username" class="input_field search_form_name" type="text" placeholder="Username" required="required" data-error="Your username is required.">
                                                <input id="search_form_category" name = "password" class="input_field search_form_category" type="password" placeholder="Password" required="required" data-error="Your password is required.">
                                                <button id="search_submit_button" type="submit" class="search_submit_button trans_200" value="login"><a href="login-servlet" style="color:black;">Log In</a></button>
                                                <h2 class="register_login">Don't have an account yet?      <li class="register_login"><a href="register.jsp">Sign Up</a></li></h2>
                                            </form>
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>

                    </div>


                </div>





                <!-- Sidebar Column -->

                <div class="col-lg-4">
                    <div class="sidebar1">

                        <!-- Archives -->
                        <div class="sidebar1_section">

                        </div>
                        <ul class="sidebar_list">

                        </ul>
                    </div>

                    <!-- Latest Posts -->

                    <div class="sidebar_section">
                        <div class="sidebar_section_title">
                            <h3>Latest artworks</h3>
                        </div>

                        <div class="latest_posts">

                            <!-- Latest Post -->
                            <div class="latest_post">
                                <div class="latest_post_image">
                                    <img src="images/1.webp" alt="https://unsplash.com/@dsmacinnes">
                                </div>
                                <div class="latest_post_title"><a href="index.jsp">Rocking Lady</a></div>
                                <div class="latest_post_meta">
                                    <span class="latest_post_author"><a href="index.jsp">Rose Simpson</a></span>
                                    <span>|</span>
                                    <span class="latest_post_comments"><a href="#">$102</a></span>
                                </div>
                            </div>

                            <!-- Latest Post -->
                            <div class="latest_post">
                                <div class="latest_post_image">
                                    <img src="images/4.webp" alt="https://unsplash.com/@erothermel">
                                </div>
                                <div class="latest_post_title"><a href="index.jsp">DJ Monkey</a></div>
                                <div class="latest_post_meta">
                                    <span class="latest_post_author"><a href="index.jsp">David Anderson</a></span>
                                    <span>|</span>
                                    <span class="latest_post_comments"><a href="#">$96</a></span>
                                </div>
                            </div>

                            <!-- Latest Post -->
                            <div class="latest_post">
                                <div class="latest_post_image">
                                    <img src="images/5.webp" alt="https://unsplash.com/@element5digital">
                                </div>
                                <div class="latest_post_title"><a href="index.jsp">Dance of Passion</a></div>
                                <div class="latest_post_meta">
                                    <span class="latest_post_author"><a href="index.jsp">Sandra Christian</a></span>
                                    <span>|</span>
                                    <span class="latest_post_comments"><a href="#">$109</a></span>
                                </div>
                            </div>

                        </div>

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
                            <li class="footer_list_item"><a href="index.jsp">Home</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Artworks</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Artists</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Exhibitions</a></li>
                            <li class="footer_list_item"><a href="index.jsp">About Us</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Footer Column - Usefull Links -->

                <div class="col-lg-3 footer_col">
                    <div class="footer_column_title">Useful links</div>
                    <div class="footer_column_content">
                        <ul>
                            <li class="footer_list_item"><a href="index.jsp">Terms of Use</a></li>
                            <li class="footer_list_item"><a href="index.jsp">FAQ</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Comunity</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Cookies Policy</a></li>
                            <li class="footer_list_item"><a href="index.jsp">Privacy Policy</a></li>
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

