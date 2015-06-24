clc;funcprot(0);//EXAMPLE 3.40
// Initialisation of Variables
p1=1;...........//pressure before isothermal compression in bar
t1=310;.........//temperature before isothermal compression in K
p3=16;.........//pressure before isothermal expansion in bar
t3=930;.........//temperature before isothermal expansion in K
R=287;.............//Gas constant in kJ/kgK
//Calculations
v1=(R*t1)/(p1*10^5);...............//Volume before isothermal compression in m^3
v3=(R*t3)/(p3*10^5);...............//Volume before isothermal expansion in m^3
v2=v3;v4=v1;.................//2-3 and 1-4 are isochoric processes
r=v1/v2;...................//Compression ratio
q12=R*t1*log(r);...............//Work done and heat rejected in process 1-2
w12=q12;
disp(q12/1000,"Work done in process 1-2 in kJ/kg:")
disp(w12/1000,"Heat rejected in process 1-2 in kJ/kg:")
q23=0;w23=q23;..................//COnstant volume process and hence work done is zero
disp(q23/1000,"Work done in process 2-3 in kJ/kg:")
disp(q23/1000,"Heat rejected in process 2-3 in kJ/kg:")
q34=R*t3*log(r);...............//Work done and heat rejected in process 1-2
w34=q34;
disp(q34/1000,"Work done in process 3-4 in kJ/kg:")
disp(w34/1000,"Heat rejected in process 3-4 in kJ/kg:")
q41=q34-q12;w41=q41;
disp(q41/1000,"Work done in process 4-1 in kJ/kg:")
disp(w41/1000,"Heat rejected in process 4-1 in kJ/kg:")
etath=w41/q34;.....................//Thermal efficiency
disp(etath*100,"Thermal efficiency of the cycle in %:")


