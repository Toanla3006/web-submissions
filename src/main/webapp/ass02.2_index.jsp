<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Build Your Computer</title>
</head>
<body>
    <form action="ass02.2_getResult.jsp" method="GET">
        <table cellspacing="6">
            <tr>
                <td><label>Processor:</label></td>
                <td><label>Accessories:</label></td>
            </tr>
            <tr>
                <td><input type="radio" name="processor" value="Celeron D">Celeron D</td>
                <td>Monitor <input type="checkbox" name="accessories" value="monitor"></td>
            </tr>
            <tr>
                <td><input type="radio" name="processor" value="Pentium IV">Pentium IV</td>
                <td><select name="peripherals" multiple size="3">
                    <option value="camera">Camera</option>
                    <option value="printer">Printer</option>
                    <option value="scanner">Scanner</option>
                </select></td>
            </tr>
            <tr>
                <td><input type="radio" name="processor" value="Pentium D">Pentium D</td>
            </tr>
            
        </table>
        <br>
        <input type="submit" value="PURCHASE">
    </form>
</body>
</html>