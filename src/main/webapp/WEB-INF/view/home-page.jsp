<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Site CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

    <title>Hoot's Shop</title>
</head>

<body>
    <header>
        <div class="row bg-success">
            <div class="col-lg-2 my-brand">
                <div class="d-flex">
                    <img class="my-logo-image" src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Owl logo">
                    <div class="fs-2 text-white my-brand-text">Hoot's Shop</div>
                </div>
            </div>
            <div class="col my-search-bar">
                <form class="d-flex" action="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
            <div class="col-lg-2 my-user-bar">
                <div class="d-flex my-user-bar-layout">
                    <button class="btn btn-outline-light" onclick="location.href='login'">Login</button>
                    <button class="btn btn-outline-light" title="cart_button" onclick="location.href='cart-page.html';">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-cart" viewBox="0 0 16 16">
                            <path
                                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg>
                    </button>
                    <button class="btn btn-outline-light" title="add_product_button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
                          </svg>
                    </button>
                </div>
            </div>
        </div>

        <!-- Currently not planning for mobile support. May add that later. So, keeping the collapsing navbar. -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-success fw-bold">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${homePageCategory==0}">active</c:if>" href="${pageContext.request.contextPath}/?category=0">
                            All
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${homePageCategory==1}">active</c:if>" href="${pageContext.request.contextPath}/?category=1">
                            Electronics
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${homePageCategory==2}">active</c:if>" href="${pageContext.request.contextPath}/?category=2">
                            Gadgets
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <c:if test="${homePageCategory==3}">active</c:if>" href="${pageContext.request.contextPath}/?category=3">
                            Toys
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <div class="container">
            <div class="row border-bottom border-success my-section-heading-layout">
                <h1 class="text-success my-section-heading">Ongoing Sales</h1>
            </div>

            <div class="row row-cols-1 row-cols-md-5 g-4">
            
            	<!-- Dynamically populate cards of "All" category here -->
            	<c:forEach var="product" items="${productList}">
            	
            		<div class="col">
	                    <div class="card border-success h-100" onclick="location.href='${pageContext.request.contextPath}/product?productId=${product.id}'">
	                        <img src="${pageContext.request.contextPath}/resources/images/${product.imagePath}" class="card-img-top my-product-img" alt="...">
	                        <div class="card-body">
	                            <h5 class="card-title">${product.name}</h5>
	                            <p class="card-text">${product.price} <s>${product.price + 5}</s></p>
	                        </div>
	                        <div class="card-footer bg-transparent border-top-0">
<!-- 	                            <span class="badge bg-warning text-dark">Used</span> -->
	                            <span class="badge bg-info text-dark">New</span>
	                        </div>
	                    </div>
                	</div>
            	
            	</c:forEach>
 
            </div>
        </div>
    </main>

    <footer>
        <div class="bg-success text-light">
            <div class="container my-footer-layout">
                <p>
                    &copy; 2022 Hoot's Shop Inc.
                </p>
                <p>
                    Logo by: <a class="text-light" href="https://www.vecteezy.com/free-vector/nature">Nature Vectors by
                        Vecteezy</a>
                </p>
            </div>
        </div>
    </footer>


    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>