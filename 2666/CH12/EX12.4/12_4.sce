clc
//initialisation of variables
p=5//ft
h=200//ft
p1=80.49//Btu per lb
P2=0.16949//ft
p3=72.41//psia
h1=85.92//Btu per lb
q=21.57//psia
d=42.4//tons
v=1.121//ft
//CALCULATIONS
W=p*h/(p1-q)//lb per min
H=W*(h1-p1)//Btu per min
H1=H/d//hp
Cv=p*h/H//hp
V=W*v//cu ft per min
//RESULTS
printf('the compressior work is=% f Btu per min',H)
printf('the horsepower is =% f hp',H1)
printf('The piston displacement of the horsepower=% f cu ft per min',V)
