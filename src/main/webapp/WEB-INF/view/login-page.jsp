<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hoot's Shop Login</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath}/resources/css/signin.css" rel="stylesheet">
</head>

<body class="text-center">

    <main class="form-signin">
        <form action="${pageContext.request.contextPath}/login/verifyUser">
            <img class="mb-4" src="${pageContext.request.contextPath}/resources/images/logo-green.png" alt="Hoot's Shop logo" width="100" height="auto">
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

            <div class="form-floating">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
                <label for="floatingPassword">Password</label>
            </div>
            <button class="w-100 btn btn-lg btn-success" type="submit">Sign in</button> 
        </form>
    	
    	<br/><br/><br/><br/>
    	<h2 class="h3 mb-3 fw-normal">Don't have an account?</h2>
		<button class="w-100 btn btn-lg btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/showRegistrationForm'">Register</button>
    	
    	<p class="mt-5 mb-3 text-muted">&copy; 2022 Hoot's Shop inc.</p>
    </main>



</body>

</html>