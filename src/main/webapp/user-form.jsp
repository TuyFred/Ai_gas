<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>${user.id == 0 ? 'New User' : 'Edit User'}</h2>
        <form action="user?action=${user.id == 0 ? 'insert' : 'update'}" method="post">
            <input type="hidden" name="id" value="${user.id}" />
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" value="${user.username}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" value="${user.password}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="fullname" value="${user.fullname}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" value="${user.address}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" value="${user.phone}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="${user.email}" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="user?action=list" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>
