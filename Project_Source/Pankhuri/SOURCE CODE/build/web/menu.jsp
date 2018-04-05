<%-- 
    Document   : ad2
    Created on : Oct 10, 2015, 4:15:29 PM
    Author     : Zee
--%>
<%@page import="java.lang.String"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="loc.LatLng"%>
<!DOCTYPE html>
<%@include file="db.jsp" %>
<%-- 
    Document   : ad1
    Created on : Oct 9, 2015, 12:05:53 PM
    Author     : Zee
--%>



<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Location Based Service</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style-portfolio.css">
    <link rel="stylesheet" href="css/picto-foundry-food.css" />
    <link rel="stylesheet" href="css/jquery-ui.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="icon" href="favicon-1.ico" type="image/x-icon">
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav main-nav  clear navbar-right ">
                    <li><a class="active color_animation" href="us2.jsp">HOME</a></li>
                    <li><a class="color_animation" href="vs.jsp">Visit Services</a></li>
                    <li><a class="color_animation" href="us3.jsp">Rating</a></li>
                    <li><a class="color_animation" href="cart.jsp">Cart</a></li>
                    <li><a class="color_animation" href="index.jsp">LOGOUT</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
         
    <%
    String username=(String)session.getAttribute("uname");
    String uid=(String)session.getAttribute("uid");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pro","root","root");
    String price=request.getParameter("price");
    String rname=request.getParameter("rname");
    String sid=request.getParameter("sid");
    Map <String,String> mm = new LinkedHashMap<String, String>();
    List<String> menus = new LinkedList<String>();    
    String cuisine=request.getParameter("cuisine");
    cuisine=cuisine.replace("[", "");
    cuisine=cuisine.replace("]", "");
    cuisine=cuisine.replace(",", "");
    cuisine=cuisine.trim();
    String[] arr = cuisine.split(" "); 
    System.out.println(arr.length);
     for ( String ss : arr) 
     {
     System.out.println("select "+ss+" from food");
        PreparedStatement ps = con.prepareStatement("select "+ss+" from food");
        ResultSet rss = ps.executeQuery();
        while(rss.next())
        {
        mm.put(rss.getString(ss), ss);
        menus.add(rss.getString(ss));
        }
     }
     
    %>
    
    <div id="top" class="starter_container bg">
        <div class="follow_container">
            <div class="starter_follow">
                <h2 class="top-title"> There is no sincere love than the love for food!</h2>
                <h2 class="white second-title">" Best in your location "</h2>
                <hr>
            </div>
        </div>
        <div class="direction_container">
            <div class="direction">
                
            </div>
        </div>
    </div>



    <div align="center" >
        <h3>Restaurant Name:<%=rname%></h3>
                <h3>Price for two:<%=price%></h3>
                <h3>Cuisine Type:<%=cuisine%></h3>
                <%
                for(String xx:menus)
                {
                %>
                <%
                System.out.println("restaurant name "+ rname);
                System.out.println("restaurant name "+ uid);
                System.out.println("restaurant name "+ sid);
                
                %>
                <form action="Book" method="post">
               <label><%=xx%></label><input type="checkbox" name="cuisine" value="<%=xx%>" />
               
               <input type="hidden" name="id"  value="<%=uid%>"/>
               <input type="hidden" name="rname"  value="<%=rname%>"/>
               <input type="hidden" name="price"  value="<%=price%>"/>
               <input type="hidden" name="sid"  value="<%=sid%>"/>
               
                <%
                }
                %>
                <br><br><br>
                <input type="submit" value="book Now"/>
                </form>
    </div>


    <section class="description_content">
        <div class="limit"> 
            <div class="container">
                <div class="row">
                    <div id="w">
                        <ul id="filter-list" class="clearfix">
                            <li class="filter" data-filter="all">All</li>
                            <li class="filter" data-filter="breakfast">Breakfast</li>
                            <li class="filter" data-filter="special">Special</li>
                            <li class="filter" data-filter="desert">Desert</li>
                            <li class="filter" data-filter="dinner">Dinner</li>
                        </ul><!-- @end #filter-list -->    
                        <ul id="portfolio">
                            <li class="item breakfast"><img src="images/food_icon01.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>

                            <li class="item dinner special"><img src="images/food_icon02.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>
                            <li class="item dinner breakfast"><img src="images/food_icon03.jpg" alt="Food" >
                                <h2 class="white">$18</h2>
                            </li>
                            <li class="item special"><img src="images/food_icon04.jpg" alt="Food" >
                                <h2 class="white">$15</h2>
                            </li>
                            <li class="item dinner"><img src="images/food_icon05.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>
                            <li class="item special"><img src="images/food_icon06.jpg" alt="Food" >
                                <h2 class="white">$22</h2>
                            </li>
                            <li class="item desert"><img src="images/food_icon07.jpg" alt="Food" >
                                <h2 class="white">$32</h2>
                            </li>
                            <li class="item desert breakfast"><img src="images/food_icon08.jpg" alt="Food" >
                                <h2 class="white">$38</h2>
                            </li>
                        </ul><!-- @end #portfolio -->
                    </div><!-- @end #w -->
                </div>
            </div>
        </div>  
    </section>


    <section id ="beer" class="background_content">
        <h1>Great <span>Place</span> to enjoy</h1>
    </section>


    <section class="description_content">
        <div class="limit">
            <div class="picture_content margin-right">
                <ul class="image_box_beer">
                    <li></li>
                </ul>
            </div>
      	    <div class="description_body margin-left">
                <h1>OUR BEER</h1>
                <div class="icon-beer fa-2x"></div>
                <p>Here at Restaurant we?re all about the love of beer. New and bold flavors enter our doors every week, and we can?t help but show them off. While we enjoy the classics, we?re always passionate about discovering something new, so stop by and experience our craft at its best.</p>
            </div>
        </div>
    </section>


   <section id="bread" class="background_content">
     <h1>Our Breakfast <span>Menu</span></h1>
   </section>


    <section class="description_content">
        <div class="limit">
            <div class="description_body margin-right">
                <h1>OUR BREAD</h1>
                <div class="icon-bread fa-2x"></div>
                <p>We love the smell of fresh baked bread. Each loaf is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
            </div>
            <div class="picture_content margin-left">
                <ul class="image_box_story1">
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
    </section>


    <section id="featured" class="background_content">
        <h1>Our Featured Dishes <span>Menu</span></h1>
    </section>


    <section class="description_content">
        <div class="limit">
            <div class="description_body margin-right">
                <h1>Have a look to our dishes!</h1>
                <div class="icon-hotdog fa-2x"></div>
                <p>Each food is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
            </div>
            <div class="picture_content margin-left">
                <ul class="image_box_story2">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="images/slider1.jpg"  alt="...">
                                <div class="carousel-caption">
                                    ...
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/slider2.jpg" alt="...">
                                <div class="carousel-caption">
                                    ...
                                </div>
                            </div>
                            <div class="item">
                                <img src="images/slider3.jpg" alt="...">
                                <div class="carousel-caption">
                                    ...
                                </div>
                            </div>
                        </div>
                    </div>
                </ul>
            </div>
        </div>
    </section>


    <section id="reservation" class="background_content">
        <h1>Reserve A Table!</h1>
    </section>


    <section class="description_content">
        <div class="limit">
            <div class="inner contact">
                <!-- Form Area -->
                <div class="contact-form">
                    <!-- Form -->
                     </div>
                                        
                                    </div>
                                </div>
                                
                                <div class="col-lg-4 col-md-6 col-xs-12">
                                    <!-- Message -->
                                    <div class="right-text">

                                        <h2>Hours</h2><hr>
                                        <p>Mon to Fri: 7:30 AM - 11:30 AM</p>
                                        <p>Sat & Sun: 8:00 AM - 9:00 AM</p>
                                        <p>Lunch</p>

                                        <p>Mon to Fri: 12:00 PM - 5:00 PM</p>
                                        <p>Dinner</p>
                                        <p>Mon to Sat: 6:00 PM - 1:00 AM</p>
                                        <p>Sun: 5:30 PM - 12:00 AM</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Clear -->
                        <div class="clear"></div>
                    </form>

                </div><!-- End Contact Form Area -->
            </div><!-- End Inner -->
        </div>
    </section>


  

    <footer class="first_footer">
        <section class="limit">
            <div class="come_in">
                <span class="social_heading"></span>
                <span class="social_info"><a class="color_animation" href="https://www.google.com/maps/place/Venice,+FL/@27.114846,-82.4146291,13z/data=!3m1!4b1!4m2!3m1!1s0x88c34e48300b2dfb:0x52ac882236d6b362" target="_blank"></a></span>
            </div>
            <div class="connect">
                <span class="social_heading">FOLLOW</span>
                <ul class="social_icons">
                    <li><a class="icon-twitter color_animation" href="#" target="_blank"></a></li>
                    <li><a class="icon-github color_animation" href="#" target="_blank"></a></li>
                    <li><a class="icon-linkedin color_animation" href="#" target="_blank"></a></li>
                    <li><a class="icon-mail color_animation" href="#"></a></li>
                </ul>
            </div>
            <div class="or_call">
                <span class="social_heading">OR DIAL</span>
                <span class="social_info"><a class="color_animation" href="tel:883-335-6524">(941) 883-335-6524</a></span>
            </div>
        </section>
    </footer>


    <div id="contact"  class="map">
        <!--<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d26081603.29442047!2d-95.677068!3d37.0625!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1421239704485" width="100%" height="400px" frameborder="0" style="border:0"></iframe>-->
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="inner contact">
                    <!-- Form Area -->
                    <div class="contact-form">
                        <!-- Form -->
                        
                    </div><!-- End Contact Form Area -->
                </div><!-- End Inner -->
            </div>
        </div>
    </div>

    <footer class="sub_footer">
        <section class="limit">
            <div><p>&copy; Restaurant 2014, Theme by <a href="https://themewagon.com/">ThemeWagon</a></p></div>
            <div><p>BACK TO <a href="#top">TOP</a></p></div>
            <div><p>BUILT WITH CARE BY <a href="#" target="_blank">US</a></p></div>
        </section>
    </footer>


    <script type="text/javascript" src="js/jquery-1.10.2.min.js"> </script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
    <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>      
    <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>

    <script type="text/javascript">
        $(function() {
            $('a[href*=#]:not([href=#])').click(function() {
                if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                      return false;
                    }
                }
            });
        });

    </script>


    <script>
        $(function() {
            $( "#datepicker" ).datepicker();
        });
    </script>

    <script type="text/javascript">
        $(function(){
            $('#portfolio').mixitup({
                targetSelector: '.item',
                transitionSpeed: 450
            });
        });
    </script>
</body>
</html>