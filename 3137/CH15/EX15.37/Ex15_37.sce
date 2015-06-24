//Initilization of variables
del=450 //lb/ft^3
h1=9/12 //ft
h2=10/12 //ft
ro1=4/12 //ft
ri1=2/12 //ft
ro2=18/12 //ft
ri2=16/12 //ft
a=2.5/24 //ft
b=3.5/24 //ft
l=1 //ft
g=32.2 //ft/s^2
//Calculations
Whub=(%pi*ro1^2-%pi*ri1^2)*h1*del //lb
Wrim=(%pi*ro2^2-%pi*ri2^2)*h2*del //lb
//For one spoke
Wspoke=(%pi*a*b*l*del) //lb
//Moment of inertia calculations
Ihub=0.5*(Whub/g)*(ro1^2+ri1^2) //lb-s^2-ft
Irim=0.5*(Wrim/g)*(ro2^2+ri2^2) //lb-s^2-ft
Ispoke=6*((1/12)*(Wspoke/g)*l^2+(Wspoke/g)*h2^2) //lb-s^2-ft
Iwheel=Ihub+Irim+Ispoke //lb-s^2-ft
//result
clc
printf('The moment of inertia of the wheel is %flb-s^2-ft',Iwheel)
