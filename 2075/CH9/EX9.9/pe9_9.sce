//example 9.9
clc;funcprot(0);
//Initialization of Variable
V=120;//load voltage
f=60;//Hz
Vp=200;//V
Vd=5;//V
pi=3.1428;
//calculation
Vdc=2*Vp/pi;
disp(Vdc,"average voltage in V:")
printf('\nVa-d @ 200Vin=4.2V')
Va=4.2;
printf('\n\npick R1=47kohm')
R1=47;
I=(Vdc-Va)/R1;
disp(I,"current through dividers in mA:")
R2=Va/I;
disp(R2,"R2 in kohm:")
pi=3.1428;
K=1/(1/R1+1/R2);// R1 \\ R2
C=1/2/pi/3.8/K;
disp(C*1000,"capacitor in microF:")
clear()
