clc
//initialisation of variables
p1=27.0//psia
p2=90//psia
h1=23.90//Btu
h2=79.36//Btu per lb
h3=0.1720//Btu
h4=89.02//Btu per lb
w=18.03//lb per min
d=42.4//tond
//CALCULATIONS
W=w*(h4-h2)//Btu per min
H=W/d//hp
//RESULTS
printf('the horse power is =% f hp',H)
