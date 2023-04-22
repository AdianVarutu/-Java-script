<!DOCTYPE html>
<html>
<head>
  <title>Recapitulare</title>
</head>

    <body>
<p id="demo"></p>
<script>
    document.getElementById("demo").innerHTML="Salut!"
    const nr1Text = prompt("enter number1:")
const nr1 = parseInt(nr1Text);
const nr2 = parseInt(prompt("enter number2:"));
const op = prompt("operation:")
if (op=="adunare" || op =="+") {
    console.log(nr1+nr2)
} else if(op=="-") {
    console.log(nr1-nr2)
} else if(op=="*") {
    console.log(nr1*nr2)
} else if(op=="/") {
    console.log(Math.floor(nr1/nr2) + " rest " + nr1%nr2)
} else if(op=="p") {
    console.log(nr1**nr2)
}
</script>
    </body>
</html>