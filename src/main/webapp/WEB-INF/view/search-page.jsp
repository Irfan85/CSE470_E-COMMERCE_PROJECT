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
                    <button class="btn btn-outline-light" onclick="location.href='login-page.html'">Login</button>
                    <button class="btn btn-outline-light" title="cart_button">
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

        <nav class="navbar navbar-expand-lg navbar-dark bg-success fw-bold">
            <!-- This is just here for the extra margin it provides. Only for design purpose     -->
        </nav>
    </header>

    <main>
        <div class="container">
            <div class="row border-bottom border-success my-section-heading-layout">
                <h1 class="text-success my-section-heading">Search Results "watch"</h1>
            </div>

            <div class="d-flex align-items-start">
                <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                  <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">All</button>
                  <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Electronics</button>
                  <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Gadgets</button>
                  <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Toys</button>
                </div>
                <div class="tab-content" id="v-pills-tabContent">
                    <!-- 'All' Category section -->
                  <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">New</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Used</button>
                        </li>
                      </ul>
                      <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <!-- 'ALL' -> 'New' Section -->
                            
                            <div class="row row-cols-1 row-cols-md-5 g-4">
                                <div class="col" style="min-width: 200px; height: auto">
                                    <div class="card border-success h-100">
                                        <img src="${pageContext.request.contextPath}/resources/images/watch1.jpg" class="card-img-top my-product-img" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">Simple Wrist Watch</h5>
                                            <p class="card-text">$56.00</p>
                                        </div>
                                        <div class="card-footer bg-transparent border-top-0">
<!--                                             <span class="badge bg-warning text-dark">Used</span> -->
                                            <span class="badge bg-info text-dark">New</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col" style="min-width: 200px; height: auto">
                                    <div class="card border-success h-100">
                                        <img src="${pageContext.request.contextPath}/resources/images/watch2.jpg" class="card-img-top my-product-img" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title">Vintage Pocket Watch</h5>
                                            <p class="card-text">$119.00</p>
                                        </div>
                                        <div class="card-footer bg-transparent border-top-0">
                                            <span class="badge bg-warning text-dark">Used</span>
<!--                                             <span class="badge bg-info text-dark">New</span> -->
                                        </div>
                                    </div>
                                </div>
                                            
                                <!-- Similar columns like above will be added dynamically -->
                            </div>
                            

                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
                      </div>
                      
                  </div>
                  <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
                  <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
                  <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
                </div>
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