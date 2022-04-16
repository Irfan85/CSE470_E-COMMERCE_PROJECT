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
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
            <div class="col-lg-2 my-user-bar">
                <div class="d-flex my-user-bar-layout">
                    <button class="btn btn-outline-light" title="cart_button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-cart" viewBox="0 0 16 16">
                            <path
                                d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg>
                    </button>
                    <button class="btn btn-outline-light">Login</button>
                </div>
            </div>
        </div>

        <!-- Currently not planning for mobile support. May add that later. So, keeping the collapsing navbar. -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-success fw-bold">
            <!-- This is just here for the extra margin it provides. Only for design purpose     -->
        </nav>
    </header>

    <main>
        <div class="container">

            <div class="card mb-3 border-success text-success">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/resources/images/${product.imagePath}" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h1 class="card-title my-product-desc-title">${product.name}</h1>

                            <div class="d-flex aligh-items-center">
                                <!-- Have to hide/show these tags automatically based on the product's condition -->
                                <p class="badge bg-info text-dark fs-4 m-1">New</p>
<!--                                 <p class="badge bg-warning text-dark fs-4 m-1">Used</p> -->
                                <p class="badge bg-success fs-4 m-1">In Stock</p>
<!--                                 <p class="badge bg-danger fs-4 m-1">Out of Stock</p> -->
                            </div>

                            <p class="card-text my-product-desc-seller-name">Seller: User-A</p>

                            <p class="fs-1">Price: $${product.price}</p>

                            <div class="d-flex aligh-items-center">
                                <label for="quantity"><span class="fs-3 m-1">Quantity:</span></label>
                                <input class="border-3 rounded border-success" type="number" id="quantity" name="quantity" aria-label="quantity" min="1" max="100">
                            </div>
                            
                            <div class="card-body d-flex align-items-right justify-content-end">
                                <button id="addToCartBtn" class="btn btn-success btn-lg">Add to Cart</button>
                            </div>
                            
                            <!-- Added to cart toast message -->
                            <div class="position-fixed bottom-0 end-0 p-3">
                                <div id="addedToCartToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                                  <div class="toast-header">
                                    <strong class="me-auto">Successfully added to cart!</strong>
                                    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                                  </div>
                                  <div class="toast-body">
                                      ${product.name}
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Procuct description -->
            <div class="row border-bottom border-success my-section-heading-layout">
                <h1 class="text-success my-section-heading">Product Description</h1>
            </div>

            <p class="text-success fs-4">
                ${product.description}
            </p>

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

    <!-- Site Scripts -->
    <script src="${pageContext.request.contextPath}/resources/scripts/index.js"></script>
</body>

</html>