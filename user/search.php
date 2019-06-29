<?php
session_start();
if (empty($_SESSION['usertypeu']))
{
       header("location: ../index.php");
}
?>
<html>
<html>
<head>
<title>
 Online Crime Reporting System
</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

      <div class="wrapper">

            <div class="header"> <img src="image/Logo.png" height="120px" width="900px">



            </div>

            <div class="content">
                  <div class="menu">
                        <table class="table">
                              <tr> 
                                    <td><a href="index.php">Coplain status</a></td>
                                    <td><a href="firReport.php">FIR</a></td>
                                    <td><a href="criminalform.php">Criminal Registration</a></td>
                                    <td><a href="postmortem.php">PostMortem</a></td>
                                    <td><a href="wanted.php">Most Wanted</a></td>
                                    <td><a href="suspect.php">Suspects</a></td>
                                    <td><a href="search.php">Search</a></td>
                                     <td><a href="logout.php">Logout</a></td>
                                   

                              </tr>
                        </table>
            </div><hr>
            <div class="area1">
            <center><u>Search</u></center><br>
           <center>
            <table>
                  <tr>
                              <form action="result.php" method="POST">
                        <td></td>
                        <td>
                              <input type="text" name="search" placeholder="Enter Name/ID no of Criminal...">
                        </td>
                       
                        <td><input type="submit" name="btn" class="btn" value="Search"></td>
                  </form>
                  </tr>
            </table>
            
                  
            </center>
                  
                  
                  


            </div>
        </div>

            <div class="footer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright &copy 2019 All right reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Designed & Developed by Md.Rubel Rana </div>



      </div>
</body>
</html>