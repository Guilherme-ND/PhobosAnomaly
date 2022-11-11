<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Phobos.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/media.css"/>
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'/>
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <!-- AOS CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>
    <link rel="shortcut icon" href="img/icon.png" type="image/x-icon"/>
    <title>Enxame Hospital</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <header>
            <nav>
                <div class="menu">
                    <a href="#home" class="logo">
                        <i class='bx bxs-ball'></i>
                        <span>Enxame</span>
                    </a>
                    <ul class="navbar open">
                        <a class="btnMenu"><i class='bx bx-menu'></i></a>
                        <li><a href="#home">home</a></li>
                        <li><a href="#about">about</a></li>
                        <li><a>specialties <i class='bx bx-chevron-down'></i></a>
                            <ul class="sub">
                                <li><a href="#emphasis">emphasis</a></li>
                                <li><a href="#products">products</a></li>
                                <li><a href="#services">services</a></li>
                                <li><a href="#domain">domain</a></li>
                            </ul>
                        </li>
                        <li><a href="#localization">localization</a></li>
                        <li><a href="#contact">contact</a></li>
                        <button><a href="login.aspx">login</a></button>
                    </ul>
                </div>
            </nav>
        </header>

        <main>
            <section id="home">
                <div class="homeC">
                    <video id="video" src="video/Scorn.mp4" muted></video>
                    <div class="homeI">
                        <h1>Enxame<span>&reg;</span> Hospital Web</h1>
                        <h2>Webhosting</h2>
                        <a href="#" class="btnDefault">Read more</a>
                    </div>
                </div>
            </section>

            <section id="about">
                <div class="swiper aboutInner aboutC" data-aos="fade-up">
                    <h2>Know more about us</h2>
                    <div class="swiper-wrapper">
                        <!-- CARD 1 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil.PNG" alt="perfil1"></li>
                                <li class="cardTitulo">
                                    <h4>Rodometalica</h4>
                                </li>
                                <li class="cardStars">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Developer</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 2 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil2.PNG" alt="perfil2"></li>
                                <li class="cardTitulo">
                                    <h4>Simono</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i clas="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Boss</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 3 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil3.PNG" alt="perfil3"></li>
                                <li class="cardTitulo">
                                    <h4>Rodoamerica</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Secretary</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 4 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil4.PNG" alt="perfil4"></li>
                                <li class="cardTitulo">
                                    <h4>Samara</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Phantasm</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 5 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil5.PNG" alt="perfil5"></li>
                                <li class="cardTitulo">
                                    <h4>Jaquelino</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Maker all</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 6 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil6.PNG" alt="perfil6"></li>
                                <li class="cardTitulo">
                                    <h4>Ollyhudson</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Director</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 7 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil7.PNG" alt="perfil7"></li>
                                <li class="cardTitulo">
                                    <h4>Lerygol</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Manager</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 8 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil8.PNG" alt="perfil8"></li>
                                <li class="cardTitulo">
                                    <h4>Analar</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Design</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>

                        <!-- CARD 9 -->
                        <div class="card swiper-slide">
                            <ul>
                                <li><img src="img/perfil9.PNG" alt="perfil9"></li>
                                <li class="cardTitulo">
                                    <h4>Cipriana</h4>
                                </li>
                                <li class="cardStars">
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                </li>
                                <li class="cardCargo">
                                    <h4>Developer</h4>
                                </li>
                                <li class="socialMedia">
                                    <i class="bx bxl-facebook-circle"></i>
                                    <i class="bx bxl-instagram"></i>
                                    <i class="bx bxl-tiktok"></i>
                                    <i class="bx bxl-linkedin-square"></i>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- controles -->
                    <div class="swiper-button-next myNext"></div>
                    <div class="swiper-button-prev myPrev"></div>
                    <div class="swiper-pagination myPage"></div>
                </div>
            </section>

            <section id="emphasis">
                <div class="carousel">
                    <div class="carouselInner">
                        <div class="swiper carouselSwiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="img/carrosel1.png" alt="carrosel1" class="imgFit">
                                </div>
                                <div class="swiper-slide"><img src="img/carrosel2.jpg" alt="carrosel2" class="imgFit">
                                </div>
                                <div class="swiper-slide"><img src="img/carrosel3.jpg" alt="carrosel3" class="imgFit">
                                </div>
                                <div class="swiper-slide"><img src="img/carrosel4.jpg" alt="carrosel4" class="imgFit">
                                </div>
                                <div class="swiper-slide"><img src="img/carrosel5.jpg" alt="carrosel5" class="imgFit">
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </section>

            <section id="products">
                <h4>Products prices and plans</h4>
                <div class="productsC" data-aos="fade-up">
                    <!-- card1 -->
                    <ul class="cardProd">
                        <li class="price">US$ 1.06</li>
                        <li class="title">standart</li>
                        <li>
                            <h5>10 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>10 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>15 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card2 -->
                    <ul class="cardProd">
                        <li class="price">US$ 2.03</li>
                        <li class="title">dedicated</li>
                        <li>
                            <h5>12 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>12 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>17 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card3 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 3.08</li>
                        <li class="title">black</li>
                        <li>
                            <h5>15 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>15 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>20 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card4 -->
                    <ul class="cardProd">
                        <li class="price">US$ 4.04</li>
                        <li class="title">plus</li>
                        <li>
                            <h5>17 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>17 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>22 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card5 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 5.10</li>
                        <li class="title">plus ++</li>
                        <li>
                            <h5>20 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>20 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>25 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card6 -->
                    <ul class="cardProd">
                        <li class="price">US$ 6.14</li>
                        <li class="title">viper</li>
                        <li>
                            <h5>22 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>22 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>27 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card7 -->
                    <ul class="cardProd">
                        <li class="price">US$ 7.23</li>
                        <li class="title">cloud</li>
                        <li>
                            <h5>24 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>24 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>30 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                    <!-- card8 -->
                    <ul class="cardProd recomended">
                        <li class="price">US$ 8.99</li>
                        <li class="title">god</li>
                        <li>
                            <h5>50 GB of space in disk</h5>
                        </li>
                        <li>
                            <h5>50 Sub-domains</h5>
                        </li>
                        <li>
                            <h5>50 Email accounts</h5>
                        </li>
                        <li>
                            <h5>C-panel</h5>
                        </li>
                        <li><button class="btnDefault">Select</button></li>
                    </ul>

                </div>

            </section>

            <section id="services" data-aos="fade-up">
                <div class="servicesC">
                    <h4>The worst services today</h4>
                    <div class="servicesI">
                        <table class="tabela">
                            <thead>
                                <tr>
                                    <th>Services</th>
                                    <th>description</th>
                                    <th>$price</th>
                                    <th>options</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Stalker</td>
                                    <td>Stalker all people</td>
                                    <td>US$ 60.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Attacks</td>
                                    <td>Personal Attacks</td>
                                    <td>US$ 75.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Dissimulation</td>
                                    <td>Fake news</td>
                                    <td>US$ 80.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Assistence</td>
                                    <td>Present day</td>
                                    <td>US$ 82.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Eraser</td>
                                    <td>Eraser problems</td>
                                    <td>US$ 86.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Fix</td>
                                    <td>FIx error</td>
                                    <td>US$ 55.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Tilt</td>
                                    <td>Machine tilt</td>
                                    <td>US$ 64.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>global</td>
                                    <td>Global help</td>
                                    <td>US$ 90.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Red line</td>
                                    <td>Death line</td>
                                    <td>US$ 92.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                                <tr>
                                    <td>Delivery</td>
                                    <td>Delivery Punch</td>
                                    <td>US$ 99.00</td>
                                    <td><a href="#" class="btnDefault">+</a></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

            <section id="domain">
                <h4>Check if the domain is avaliable for use</h4>
                <div class="domainC">
                    <ul>
                        <li>
                            <input type="text" name="search" placeholder="Enter your domain">
                        </li>
                        <li>
                            <a href="#" class="btnDefault">Search</a>
                        </li>
                    </ul>
                </div>
            </section>

            <section id="localization">
                <h4>Try to find us on the map</h4>
                <div class="localizatioC">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.1072694370932!2d-46.47934558447686!3d-23.49264546494462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce61aabbe422bb%3A0x84301408d875bb31!2sRua%20Miguel%20Rachid%2C%20180%20-%20Vila%20Paranagua%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2003808-130!5e0!3m2!1spt-BR!2sbr!4v1663698274077!5m2!1spt-BR!2sbr"
                        width="100%" height="700" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </section>
            <section id="contact" data-aos="fade-up">
                <h4>Send a message and maybe we'll answer one day</h4>
                <div class="contactC">
                    <form action="https://api.staticforms.xyz/submit" method="post">
                        <ul class="contactI">
                            <li><input type="text" name="name" placeholder="Nome:" autocomplete="off" required></li>
                            <li><input type="email" name="email" placeholder="Email:" autocomplete="off" required></li>
                            <li>
                                <textarea name="message" placeholder="Send your message:" cols="30" rows="10" required></textarea>
                            </li>
                            <li class="formBtn">
                                <input type="submit" class="btnDefault" value="Submit">
                                <input type="reset" class="btnDefault" value="Cancel">
                            </li>
                            <li>
                                <input type="checkbox">
                                <span>I want to receive junk in my email account</span>
                            </li>
                        </ul>
                        <!-- Chave de acesso obtida no site -->
                        <input type="hidden" name="accessKey" value="4d422334-10ac-44c4-88bf-6a34f5234382">
                        <!-- Página de redirecionamento -->
                        <input type="hidden" name="redirectTo" value="http://127.0.0.1:5500/thanks.html">
                    </form>
                </div>
            </section>
        </main>

        <!-- footer -->
        <footer>
            <div class="footerC">
                <ul>
                    <li><a href="#home">home</a></li>
                    <li><a href="#about">about</a></li>
                    <li><a href="#emphasis">emphasis</a></li>
                    <li><a href="#products">products</a></li>
                    <li><a href="#services">services</a></li>
                </ul>
                <ul>
                    <li><a href="#domain">domain</a></li>
                    <li><a href="#localization">localization</a></li>
                    <li><a href="#contact">contact</a></li>
                    <li><a href="login.html">login</a></li>
                </ul>
                <a href="#home" class="logo">
                    <i class='bx bxs-ball'></i>
                    <span>Enxame</span>
                </a>
                <h5>&copy; Copyright all rights reserved 2012</h5>
            </div>
        </footer>

    </div>
    <!-- Scripts -->
    <script src="script/jquery-3.6.0.min.js"></script>
    <!-- Swiper -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <!-- AOS JS -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- Script Local -->
    <script src="script/script.js"></script>
    </form>
</body>
</html>
