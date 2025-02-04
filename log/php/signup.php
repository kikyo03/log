<?php 

if (isset($_POST['fname']) && 
    isset($_POST['email']) &&  
    isset($_POST['pass'])) {

    include "../db_conn.php";

    $fname = $_POST['fname'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];

    $data = "fname=" . $fname . "&email=" . $email;
    
    if (empty($fname)) {
        $em = "Full name is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else if (empty($email)) {
        $em = "Email is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else if (empty($pass)) {
        $em = "Password is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else {
        // Hashing the password
        $pass = password_hash($pass, PASSWORD_DEFAULT);

        // Insert into Database
        $sql = "INSERT INTO users (fname, email, password) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$fname, $email, $pass]);

        header("Location: ../index.php?success=Your account has been created successfully");
        exit;
    }

} else {
    header("Location: ../index.php?error=error");
    exit;
}
