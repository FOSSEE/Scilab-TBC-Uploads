clc;funcprot(0);//Example 2.4
//Initilisation of Variables
T1=400;.........//inner surface temparature of wall in degrees celcius
T2=350;.........//outer tempatarure of wall in degrees celcius
r1=0.015;.......//inner radius of hollow cylinder in m
r2=0.025;......//outer radius of hollow cylinder in m
L=1;....//Length of the hollow cylinder in m
//Calculations
T=(T1+T2)/2;.....//
deltT=T1-T2;.....//
K=(400-(0.05*T));.......//
R=(1/(2*%pi*K*L))*log(r2/r1);.....//thermal resisttance cylinder
Q=deltT/R;....//heat transferd from hollow cylinder in W
disp(Q/1000,"heat transferd from hollow cylinder in kW")
