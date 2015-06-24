//clear//
//Example2.3
//page 35
clc;
r = sym('r');
z = sym('z');
phi = sym('phi');
rv = -5e-06*exp(-1e05*r*z);
disp(rv,'Volume Charge density in C/cubic.metre rv=')
Q1 = integ(rv*r,phi);
Q1 = limit(Q1,phi,2*%pi);
Q2 = integ(Q1,z);
Q2 = limit(Q2,z,0.04)-limit(Q2,z,0.02);
Q3 = integ(Q2,r);
Q3 = limit(Q3,r,0.01)-limit(Q3,r,0);
disp(Q1,'Q1=')
disp(Q2,'Q2=')
disp(Q3,'Total Charge Enclosed in a 2cm length  of electron beam in coulombs Q=')
//Result
//Volume Charge density in C/cubic.metre rv =  -%e^-(100000*r*z)/200000   
//Q1=    -103993*r*%e^-(100000*r*z)/3310200000   
//Q2=    -103993*%e^-(2000*r)/331020000000000   
//Total Charge Enclosed in a 2cm length  of electron beam in coulombs Q=   
// 103993/1324080000000000000-103993*%e^-40/1324080000000000000  
//Q approximately equal to 103993/1324080000000000000 = 7.854D-14 coulombs 
