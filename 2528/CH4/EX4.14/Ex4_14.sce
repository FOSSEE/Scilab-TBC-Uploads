clc;
clear;
close;
//pagec no 116
//Figure 4.22
//Noninverting Amplifier
V1=1;       //In Volt
V2=-0.2;        //In Volt
//to draw graph of V3
step=0.5;
t=0:step:10*%pi;

V3=2*sin(100*t);      //In Volt
R1=20*10^3;    //In ohm
R2=20*10^3;    //In ohm
R3=20*10^3;    //In ohm
Rf=20*10^3;    //In ohm
Ri=5*10^3;    //In ohm
//Vout=(1+(Rf/Ri))*(V1+V2+V3)/3;
Vout=(1+(Rf/Ri))*(V1+V2)/3;     //for DC componet in Vin
Voutac=(1+(Rf/Ri))*(V3)/3;      //for ac componet in Vin
disp("Output Voltage is 3.33 V peak sine wave riding on 1.33 V DC");
plot(Voutac+Vout);
xtitle("Output","t","V")
