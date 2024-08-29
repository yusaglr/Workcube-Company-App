<cfset correctAdminName = "admin">
<cfset correctPassword = "1234">

<cfset adminName = trim(form.adminName)>
<cfset password = trim(form.password)>

<cfif adminName EQ correctAdminName AND password EQ correctPassword>
    <cflocation url="employeeList.cfm">
<cfelse>
    <script>
        alert("Yanlış ad veya şifre. Lütfen tekrar deneyiniz.");
        window.location.href = "adminLogin.cfm";
    </script>
</cfif>
