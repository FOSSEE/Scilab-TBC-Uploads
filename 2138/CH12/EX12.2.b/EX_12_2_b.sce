//Example 12.2.b // line current and power abosrbed
clc;
clear;
close;
R=11.88;//coil resistance in ohms
L=0.07;//inductance in henry
f=50;// in hertz
pf=0.48;//power factor
Vl=433;//line voltage in volts
Vp= Vl;//phase voltage
Xl=(2*%pi*f*L);//in ohms
Zb=sqrt(R^2+Xl^2);// in ohms
Ie=Vp/Zb;//current in each winding in amperes
Il=sqrt(3)*Ie;//line current in amperes
W=sqrt(3)*Vl*Il*pf;//power in watts
disp(Il,"line current in ampere is")
disp(W*10^-3,"power taken in connection in kW")
