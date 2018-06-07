<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dodajanje dogodka</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body id="page-top">

<c:set var="user" value="${username}"/>
<c:set var="Anon" value="anonymousUser"/>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="/index">Mestni utrip</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <c:choose>
            <c:when test="${user == 'anonymousUser'}">
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#about">O nas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#services">Maribor</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#portfolio">Lokacije</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#contact">Prijava</a>
                        </li>
                    </ul>
                </div>
            </c:when>
            <c:otherwise>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="/dodajanjeDogodka">Dodajanje dogodka</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#about">O nas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#services">Maribor</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#portfolio">Lokacije</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index#contact">Prijava</a>
                        </li>
                    </ul>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</nav>

<header class="masthead text-center text-white d-flex">
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <br><br><br>
                <h1 class="text-uppercase">
                    <strong>Dodajanje dogodka</strong><br />
                    <strong>${objekt}</strong>
                </h1>
                <hr>
            </div>
            <div class="col-lg-8 mx-auto">
                <section class="p-0" id="portfolio">
                    <div class="container-fluid">
                        <form method="post" action ="dodajanjeDogodka" enctype="multipart/form-data">
                            <p id="manjkajoPodatki"></p>
                            <p><input class="form-control" type="text" placeholder="Naziv dogodka" name=naziv></p>
                            <p><input class="form-control" type="number" placeholder="Vstopnina (eur)" name=vstopnina></p>
                            <p><input class="form-control" type="number" placeholder="&Scaron;tevilo mest" name="kapaciteta"></p>
                            <select class="form-control" name="tip">
                                <option value="*Izberite tip dogodka">*Izberite tip dogodka</option>
                                <c:forEach items="${tip_dogodka}" var="tip_dogodka">
                                    <option value="${tip_dogodka}">${tip_dogodka}</option>
                                </c:forEach>
                            </select><br />
                            <p><textarea class="form-control" type="textarea" rows="3" placeholder="Opis" name=opis></textarea></p>
                            <input class="form-control" type="hidden" value="${objekt}"  name=imeObjekta>
                            <p class="text-left">Datum za&ccaron;etka: <input class="form-control" type="date"  name=datumZacetka></p>
                            <p class="text-left">Ura za&ccaron;etka: <input class="form-control" type="time"  name="uraZacetka"></p>
                            <p class="text-left">Datum konca: <input class="form-control" type="date" placeholder="Datum konca (dd/mm//yyyy)" name=datumKonca></p>
                            <p class="text-left">Ura konca: <input class="form-control" type="time" placeholder="Ura konca" name=uraKonca></p>
                            <p class="text-left">Dodaj fotografije: <input type="file" class="form-control" value="Dodaj slike" name=slike" multiple></p>
                            <p><input type="submit" value="Potrdi" class="btn btn-primary btn-xl js-scroll-trigger"></p>
                        </form>
                    </div>
                </section>
            </div>
        </div>
    </div>
</header>
</body>
</html>