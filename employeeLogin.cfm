<!DOCTYPE html>
<html>
<head>
    <title>Çalışan Bilgi Alma</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            width: 300px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        button, input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
        }
        .home-button {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
</head>
<body>

<form class="home-button" action="index.cfm" method="post">
    <button type="submit">Ana Sayfa</button>
</form>

<h1 style="text-align: center">Çalışan Bilgi Alma</h1>

<form method="post">
    <label for="name">Ad:</label>
    <input type="text" id="name" name="name" required>

    <label for="age">Yaş:</label>
    <input type="number" id="age" name="age" required>

    <label for="salary">Maaş:</label>
    <input type="number" id="salary" name="salary" required>

    <input type="submit" name="saveEmployee" value="Kaydet">
</form>

<cfif isDefined("form.saveEmployee")>

    <cftry>
        <cfquery datasource="WEBSITE_DB" name="insertEmployee">
            INSERT INTO Employees (Name, Age, Salary)
            VALUES (<cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar">, 
                    <cfqueryparam value="#form.age#" cfsqltype="cf_sql_integer">, 
                    <cfqueryparam value="#form.salary#" cfsqltype="cf_sql_decimal">)
        </cfquery>

        <script>
            alert("Kayıt başarılı!");
        </script>

        <cfcatch type="any">

            <script>
                alert("Kayıt başarısız!");
            </script>
        </cfcatch>
    </cftry>
</cfif>

</body>
</html>
