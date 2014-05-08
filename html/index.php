<?PHP
if( isset($_POST['username'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    if( $username=="dv" && $password=="NewEnglandClamChowder"){
        echo "correct";
    } else {
        echo "almost correct";
    }

} else {

?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>My Login</title>
        <link rel="stylesheet" type="text/css" href="styles/styles.css">
    </head>
    <body>
        <form method="post" action="<?PHP echo $_SERVER["PHP_SELF"]; ?>">
            <input type="text" name="username">
            <input type="password" name="password">
            <input type="submit" value="Login">
        </form> 
    </body>
</html>
<?PHP
}
?>
