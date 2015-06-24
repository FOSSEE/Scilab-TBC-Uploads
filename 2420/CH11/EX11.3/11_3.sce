clc
clear
//Initialization of variables
h0=1260 //Btu/lb
msr=15 //lb
m4=15 //lb per hr per kw
t2=80 //F
t3=60 //F
//calculations
h1=h0-3413/msr
disp("from mollier charts,")
h4=58 //Btu/lb
dt=t2-t3
m3=m4*(h1-h4)/dt
//results
printf("enthalpy of steam entering the condenser = %d Btu/lb",h1)
printf("\n mass of cooling water = %d lb per hr per kw",m3)
