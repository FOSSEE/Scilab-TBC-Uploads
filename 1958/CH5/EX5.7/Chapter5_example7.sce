clc
clear
//Input data
r=0.01//Radius of liquid drop in m
n=500//Number of drops
s=(63*10^-3)//Surface tension in N/m

//Calculations
r1=(((4*3.14*r^3)/3)/((n*4*3.14)/3))^(1/3)//Radius of one small drop in m
As=(n*4*3.14*r1^2)//Total surface of 500 drops in m^2
as=4*3.14*r^2//Original surface area of the drop in m^2
W=(s*(As-as))/10^-4//Work done in J*10^-4

//Output
printf('Energy required to break up a drop of a liquid is %3.1f*10^-4 J',W)
