clc
//initialisation of variables
t1=35//F
t2=70//F
h=40000//Btu per hr
d=0.8//ft
p1=40//psia
p2=200//psia
q=80//percent
h1=39.21//ft
h2=81.16//ft
s=0.16914//ft
h3=93.79//ft
g=2544//ft
//CALCULATIONS
H=h3-h2//Btu
W=H/d//Btu
H1=h2-h1//Btu per lb
P=W+H1//Btu per lb
W1=h*(W/P)//Btu per hr
H2=W1/g//hp
//RESULTS
printf('The horsepower input is=% f hp',H2)
