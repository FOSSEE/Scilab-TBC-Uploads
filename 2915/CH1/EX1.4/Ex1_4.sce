clc,clear
//example 1.4
//To determine height of the top of ladder touching the wall

ladder = 17 //length of ladder or hypotenuse in feet
base = 8 //distance between lower tip of ladder and wall in feet
//Using pythagoras theorem
h=sqrt(ladder^2 - base^2) //required height
printf('Required height of top of ladder in contact with wall  = %.0f ft',h)
