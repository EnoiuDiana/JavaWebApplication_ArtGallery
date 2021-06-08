<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.Art_Gallery.MyDatabase" %><%--
  Created by IntelliJ IDEA.
  User: Diana
  Date: 12.01.2021
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ro-RO">
<head>
    <title>The Boat</title>
    <meta charset="utf-16">
    <meta name="description" content="Course Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/news_post_responsive.css">
    <link rel="stylesheet" type="text/css" href="styles/elements_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
    <link rel="stylesheet" type="text/css" href="styles/news_styles.css">
    <link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
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
            <div class="home_background prlx" style="background-image:url(images/paintings.jpg)"></div>
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
                            <div class="news_post_image">
                                <img src="images/painting12.jpg" alt="https://unsplash.com/@dsmacinnes">
                            </div>
                            <div class="news_post_top d-flex flex-column flex-sm-row">
                                <div class="news_post_date_container">
                                    <div class="news_post_date d-flex flex-column align-items-center justify-content-center">
                                        <div style="font-size:18px;">$103</div>
                                    </div>
                                </div>
                                <div class="news_post_title_container">
                                    <div class="news_post_title">
                                        <a href="painting12.jsp">The Boat</a>
                                    </div>
                                    <div class="news_post_meta">
                                        <span class="news_post_author"><a href="artist7.jsp" style="font-size:18px;">Anthony Kinney</a></span>
                                    </div>
                                </div>
                            </div>

                            <div class="news_post_text">

                                <table><tr><th width="100px"></th><th></th>
                                        <%
                                        try {
                                            String query = "select artwork.Title, artist.name as 'artist', artwork.Year, style.name as 'style', artwork.Price, artwork.Description, painting.TypeOfPaint as 'typeOfPaint'\n" +
                                                           "from artwork\n" +
                                                           "    join painting on artwork.ArtID = painting.ArtID\n" +
                                                           "    join artist on artwork.ArtistID = artist.ArtistID\n" +
                                                           "join style on artwork.StyleID = style.StyleID\n" +
                                                           "where artwork.ArtID = 14;";
                                            ResultSet rs = MyDatabase.readDatabase(query);
                                            if(rs != null) {
                                                while (rs.next()) {
                                        %>
                                    <tr height="50px"><td><b>Title:</b></td>    <td><%=rs.getString(1)%></td></tr>
                                    <tr height="50px"><td><b>Artist:</b></td>    <td><%=rs.getString(2)%></td></tr>
                                    <tr height="50px"><td><b>Price:</b></td>    <td>$<%=rs.getString(5)%></td></tr>
                                    <tr height="50px"><td><b>Description:</b></td>    <td><%=rs.getString(6)%> Type of paint: <%=rs.getString(7)%></td></tr>
                                    <tr height="50px"><td><b>Year:</b></td>    <td><%=rs.getString(3)%></td></tr>
                                    <tr height="50px"><td><b>Style:</b></td>    <td><a href="https://en.wikipedia.org/wiki/Modern_art" style="color:#a5a5a5;"><%=rs.getString(4)%></a></td></tr>
                                    <tr height="50px"><td><b>ID:</b></td>    <td>14</td></tr>
                                    <%
                                                }
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }

                                    %>
                                </table>

                                <div class="search_section d-flex flex-column align-items-center justify-content-center">

                                    <div class="search_content text-center">

                                        <form id="search_form" class="search_form" action="addToCart-servlet" method="post">
                                            <div class="buttons" ><div class="buttons_container" ><span><button id="search_submit_button" type="submit" class="button button_color_1 text-center trans_200" name="btn_painting12" value="painting12" style="width:205px; border-style:none;">
                                                <a href="addToCart-servlet" target="_blank"><img src="images\cart.svg" width='29px' height='29px'>&nbsp &nbsp Add to Cart</a></button></span></div></div>

                                        </form>
                                    </div>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                <!-- Sidebar Column -->

                <div class="col-lg-4">
                    <div class="sidebar">

                        <!-- Latest Posts -->

                        <div class="sidebar_section">
                            <div class="sidebar_section_title">
                                <h3>Latest artworks</h3>
                            </div>

                            <div class="latest_posts">

                                <!-- Latest Post -->
                                <div class="latest_post">
                                    <div class="latest_post_image">
                                        <img src="images/painting1.webp" alt="https://unsplash.com/@dsmacinnes">
                                    </div>
                                    <div class="latest_post_title"><a href="painting1.jsp">Rocking Lady</a></div>
                                    <div class="latest_post_meta">
                                        <span class="latest_post_author"><a href="artists.jsp">Rose Simpson</a></span>
                                        <span>|</span>
                                        <span class="latest_post_comments"><a href="#">$102</a></span>
                                    </div>
                                </div>

                                <!-- Latest Post -->
                                <div class="latest_post">
                                    <div class="latest_post_image">
                                        <img src="images/painting2.webp" alt="https://unsplash.com/@erothermel">
                                    </div>
                                    <div class="latest_post_title"><a href="painting2.jsp">Lips</a></div>
                                    <div class="latest_post_meta">
                                        <span class="latest_post_author"><a href="artists.jsp">Robert Smith</a></span>
                                        <span>|</span>
                                        <span class="latest_post_comments"><a href="#">$115</a></span>
                                    </div>
                                </div>

                                <!-- Latest Post -->
                                <div class="latest_post">
                                    <div class="latest_post_image">
                                        <img src="images/painting3.webp" alt="https://unsplash.com/@element5digital">
                                    </div>
                                    <div class="latest_post_title"><a href="painting3.jsp">Dance of Passion</a></div>
                                    <div class="latest_post_meta">
                                        <span class="latest_post_author"><a href="artists.jsp">Sandra Christian</a></span>
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
