clc;
clear all;
disp("maximum temperature calculation")
r1=25/2;//mm
r2=17;//mm
kA=0.058;// W/(m*C)
kB=0.42;// W/(m*C)
ho=20.5;//W/(m^2*C)
tsurr=15;// degree C
r3=1000*kB/ho;
disp("mm",(r3-r2)," thickness of plastic insulation =")

I=950;//A current flow
R=22*10^(-6);// ohm/m
L=1;//m
Q=(I^2)*R;
Rth= (log(r2/r1))/(2*3.1416*kA*L)+(log(r3/r2))/(2*3.1416*kB*L)+1000/(2*3.1416*r3*L*ho);// C/W
//(t1-tsurr)/Rth=Q
t1=Q*Rth+tsurr;
disp("degree C",t1,"Temperature of copper rod t1 = ")
RthA=(log(r2/r1))/(2*3.1416*kA*L);
t2=t1-Q*RthA;// degree C
disp("degree C",t2," Maximum temperature in plastic layer t2 = ")

