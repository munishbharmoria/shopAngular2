<%-- <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
>
<head>
    <title>Spring Security Example </title>
    <div th:replace="fragments/header :: header-css"/>
</head>
<body>

<div th:replace="fragments/header :: header"/>

<div class="container">

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form th:action="@{/login}" method="post">
                <fieldset>
                    <h1>Please Sign In</h1>

                    <div th:if="${param.error}">
                        <div class="alert alert-danger">
                            Invalid username and password.
                        </div>
                    </div>
                    <div th:if="${param.logout}">
                        <div class="alert alert-info">
                            You have been logged out.
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="text" name="username" id="username" class="form-control input-lg"
                               placeholder="UserName" required="true" autofocus="true"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control input-lg"
                               placeholder="Password" required="true"/>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign In"/>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

</div>


</body>
</html>
 --%>