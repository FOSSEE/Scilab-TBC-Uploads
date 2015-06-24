
clc
//initialisation of variables
p=200//ft
p1=30//psia
p2=90//psia
t1=62//f
t2=68//F
t3=20//f
t4=30//F
t5=140//F
w=250//Btu
s=42.4//ft
h=42.8//tons
h1=82.15//ft
h2=96.69//hp
h3=95.08//ft
h4=22.03//ft
h5=23.42//ft
h6=80.73//ft
//CALCULATIONS
W=(h*p)/(h6-h5)//lb per min
J=W*(h2-h1)+w//Btu per min
E=J/s//hp
Cv=h*p/J
//RESULTS
printf('the horsepower equals=% f',Cv)
