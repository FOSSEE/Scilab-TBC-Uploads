// Example 4.8;resistance,reactances and impedances and copper losses
clc;
close;
clear;
//given
r1=3.45;//ohms
r2=0.009;//ohms
x1=5.2;//ohms
x2=0.015;//ohms
kva=100;//kVA
e1=8800;//volts
e2=440;//volts
i1=(kva*10^3)/e1;//in amperes
i2=(kva*10^3)/e2;//in amperes
k=e2/e1;//transformation ratio
ro1=r1+(r2/k^2);//ohms
xo1=x1+(x2/k^2);//ohms
ro2=r2+(k^2*r1);//ohms
xo2=k^2*xo1;//ohms
zo1=sqrt(ro1^2+xo1^2);//ohms
zo2=sqrt(ro2^2+xo2^2);//ohms
disp("part (a) ")
disp(ro1,"equivalent resistance referred to the primary is,(Ohm)=")
disp(xo1,"equivalent reactance referred to the primary is,(Ohm)=")
disp(ro2,"equivalent resistance referred to the secondary is,(Ohm)=")
disp(xo2,"equivalent reactance referred to the secondary is,(Ohm)=")
disp(zo1,"equivalent impedance referred to the primary is,(Ohm)=")
disp(zo2,"equivalent impedance referred to the secondary is,(Ohm)=")
disp("part (b) ")
tcl=i1^2*r1+i2^2*r2;//in watts
tcl1=i1^2*ro1;//in watts
tcl2=i2^2*ro2;//in watts
disp(tcl,"total copper losses considering individual resistance is,(W)=")
disp(tcl1,"total copper losses consdering equivalent resistance (for primary) is,(W)=")
disp(tcl2,"total copper losses consdering equivalent resistance (for secondary) is,(W)=")
//copper losses are caculated wrong in the textbook
