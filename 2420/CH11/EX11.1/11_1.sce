clc
clear
//Initialization of variables
m1=1000 //lb/hr
m2=5000 //lb/hr
m3=3000 //lb/hr
//calculations
disp("From mollier charts,")
h5=196.16 //Btu/lb
h1=38.04 //Btu/lb
h2=67.97 //Btu/lb
h3=117.89 //Btu/lb
h4=1156.3 //Btu/lb
m4=(m1*h1+m2*h2+m3*h3-(m1+m2+m3)*h5)/(h5-h4)
//results
printf("Pounds of steam entering the heater = %d lb/hr",m4)
