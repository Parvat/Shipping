<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="ProjectTable.css" rel="stylesheet">
    <title>Create Port</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Shipping</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="/C:/Users/Hi/Desktop/Shipping/ProjectTable.html">Port</a>
              </li>            
            </ul>            
          </div>
        </div>
    </nav>
    <h2 class="heading">Create Port</h2>
    <div class="mb-6 form">
    <form id=save action="save" method="post" modelAttribute="port">
  <label for="formGroupExampleInput" class="form-label">Port Name</label>
  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter Port Name">
  <input type="submit" class="btn btn-primary btn-CreactePort" value="save"/>
  </form>
  <a href="/C:/Users/Hi/Desktop/Shipping/ProjectTable.html" type="button" class="btn btn-primary btn-CreactePort">Cancel</a>

</div>
</body>
</html>