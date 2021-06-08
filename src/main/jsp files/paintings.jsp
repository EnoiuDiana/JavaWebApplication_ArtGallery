<%--
  Created by IntelliJ IDEA.
  User: Diana
  Date: 12.01.2021
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ro-RO">

<head>

    <title>Paintings</title>

    <meta charset="UTF-16">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="description" content="Resurse-clasa9">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">

    <link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="styles/courses_styles.css">

    <link rel="stylesheet" type="text/css" href="styles/courses_responsive.css">


</head>
<body>

<div class="super_container">



    <header class="header d-flex flex-row">
        <div class="header_content d-flex flex-row align-items-center">
            <!-- Logo -->
            <div class="logo_container">
                <div class="logo">
                    <img src="images/logo1.png" alt="" width='104px'height='104px'>
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

    <!-- Popular -->

    <div class="popular page_section">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title text-center">
                        <h1>Paintings</h1>
                    </div>
                </div>
            </div>

            <div class="row course_boxes">

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting1.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting1.jsp" style="font-size: 18px">Rocking Lady</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Rose Simpson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">


                            <form id="search_form1" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button1" type="submit"  name="btn_painting1" value="painting1" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>


                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$102</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting2.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting2.jsp" style="font-size: 18px">Lips</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Robert Smith</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">


                            <form id="search_form2" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button2" type="submit"  name="btn_painting2" value="painting2" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$115</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting3.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting3.jsp" style="font-size: 18px">Dance Of Passion</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Sandra Christian</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form3" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button3" type="submit"  name="btn_painting3" value="painting3" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$109</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting4.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting4.jsp" style="font-size: 18px">Ballet</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Rose Simpson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form4" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button4" type="submit"  name="btn_painting4" value="painting4" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$129</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting5.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting5.jsp" style="font-size: 18px">DJ Monkey</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">David Anderson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form5" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button5" type="submit"  name="btn_painting5" value="painting5" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$96</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting6.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting6.jsp" style="font-size: 18px">Jazz</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Robert Smith</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form6" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button6" type="submit"  name="btn_painting6" value="painting6" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$88</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting7.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting7.jsp" style="font-size: 18px">Paris dreams</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Beatrice Stearns</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">


                            <form id="search_form7" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button7" type="submit"  name="btn_painting7" value="painting7" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$113</h3></span></div>

                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting8.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting8.jsp" style="font-size: 18px">Ballet Dancer</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Rose Simpson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">


                            <form id="search_form8" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button8" type="submit"  name="btn_painting8" value="painting8" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$91</h3></span></div>

                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting9.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting9.jsp" style="font-size: 18px">Acrylic Pouring</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Beatrice Stearns</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">

                            <form id="search_form9" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button9" type="submit"  name="btn_painting9" value="painting9" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$32</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting10.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting10.jsp" style="font-size: 18px">Piano Girl</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Rose Simpson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">

                            <form id="search_form10" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="10" type="submit"  name="btn_painting10" value="painting10" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$81</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting11.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting11.jsp" style="font-size: 18px">Drizzle In The City</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Anthony Kinney</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form11" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button11" type="submit"  name="btn_painting11" value="painting11" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$90</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting12.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting12.jsp" style="font-size: 18px">The Boat</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Anthony Kinney</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form12" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button12" type="submit"  name="btn_painting12" value="painting12" style="font-weight:600; border-style:none; background-color: #eaebec ">\
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$103</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting13.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting13.jsp" style="font-size: 18px">Determinism</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Robert Smith</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form13" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button13" type="submit"  name="btn_painting13" value="painting13" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$91</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting14.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting14.jsp" style="font-size: 18px">Lady With Umbrella</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Sandra Christian</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form14" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button14" type="submit"  name="btn_painting14" value="painting14" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$91</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting15.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting15.jsp" style="font-size: 18px">Dancing Lady in Red</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Sandra Christian</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form15" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button15" type="submit"  name="btn_painting15" value="painting15" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$109</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting16.webp" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting16.jsp" style="font-size: 18px">Girl Playing Violin</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Sandra Christian</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form16" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button16" type="submit"  name="btn_painting16" value="painting16" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$109</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting17.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting17.jsp" style="font-size: 18px">Fengshui Flower</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Robert Smith</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form17" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button17" type="submit"  name="btn_painting17" value="painting17" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$107</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting18.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting18.jsp" style="font-size: 18px">Adoring Companion</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Rose Simpson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form18" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button18" type="submit"  name="btn_painting18" value="painting18" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$148</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting19.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting19.jsp" style="font-size: 18px">Freedom</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Anthony Kinney</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form19" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button19" type="submit"  name="btn_painting19" value="painting19" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$91</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting20.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting20.jsp" style="font-size: 18px">Fruit Sample</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">Anthony Kinney</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form20" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button20" type="submit"  name="btn_painting20" value="painting20" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$81</h3></span></div>



                        </div>
                    </div>
                </div>

                <!-- Popular Course Item -->
                <div class="col-lg-4 course_box">
                    <div class="card">
                        <img class="card-img-top" src="images/painting21.jpg" alt="https://unsplash.com/@kellybrito">
                        <div class="card-body text-center">
                            <div class="card-title"><a href="painting21.jsp" style="font-size: 18px">Abstract</a></div>
                            <div class="card-text"><a href="artists.jsp" style="color:#a5a5a5;">David Anderson</a></div>
                        </div>

                        <div class="price_box d-flex flex-row align-items-center">



                            <form id="search_form21" class="search_form" action="addToCart-servlet" method = "post">
                                <div class="course_author_name" ><button id="search_submit_button21" type="submit"  name="btn_painting21" value="painting21" style="font-weight:600; border-style:none; background-color: #eaebec ">
                                    <a href="addToCart-servlet" target="_blank" style="color:black"><img src="images\cart.svg" width='29px' height='29px'></a></button>&nbsp &nbsp Add to Cart</div>

                            </form>

                            <div class="course_price d-flex flex-column align-items-center justify-content-center"><span><h3>$210</h3></span></div>



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
                                <li class="footer_list_item"><a href="home.jsp">Home</a></li>
                                <li class="footer_list_item"><a href="paintings.jsp">Artworks</a></li>
                                <li class="footer_list_item"><a href="artists.jsp">Artists</a></li>
                                <li class="footer_list_item"><a href="exhibitions.jsp">Exhibitions</a></li>
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
