<!DOCTYPE html>
<html>
<head>
    <title>Çalışan Listesi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            text-align: center;
            padding: 10px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            margin-top: 20px;
        }
        .logout {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
</head>
<body>
    <h1>Çalışan Listesi</h1>

    <cfquery datasource="WEBSITE_DB" name="getEmployees">
        SELECT * FROM Employees
    </cfquery>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Ad</th>
                <th>Yaş</th>
                <th>Maaş</th>
            </tr>
        </thead>
        <tbody>
            <cfoutput query="getEmployees">
            <tr>
                <td>#EmployeeID#</td>
                <td>#Name#</td>
                <td>#Age#</td>
                <td>#Salary#</td>
            </tr>
            </cfoutput>
        </tbody>
    </table>

    <form method="post">
        <input type="submit" name="hesapla" value="Hesapla">
    </form>

    <form class="logout" action="index.cfm" method="post">
        <button type="submit">Çıkış Yap</button>
    </form>

    <cfif isDefined("form.hesapla")>
        <cfset totalEmployees = getEmployees.recordcount>
        <cfset totalAge = 0>
        <cfset totalSalary = 0>

        
        <cfoutput query="getEmployees">
            <cfset totalAge = totalAge + Age>
            <cfset totalSalary = totalSalary + Salary>
        </cfoutput>

        <cfset avgAge = totalAge / totalEmployees>
        <cfset avgSalary = totalSalary / totalEmployees>

        <cfoutput>
        <script>
            alert("Toplam Çalışan Sayısı: #totalEmployees# \nYaş Ortalaması: #NumberFormat(avgAge, '0.00')# \nToplam Maaş: #NumberFormat(totalSalary, '0.00')# \nOrtalama Maaş: #NumberFormat(avgSalary, '0.00')#");
        </script>
        </cfoutput>
    </cfif>

</body>
</html>
