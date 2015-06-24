//Example 5_17
clc;
clear;
close;
format('v',7);
//given data : 
e=1.6*10^-19;//C/electron
kB=1.38*10^-23;//Boltzman constant
Eta=2;//For Si diode
I01=2;//micro A
I02=4;//micro A
Vz1=100;//V
Vz2=100;//V
VT=0.026;//V//Thermal temperature
disp("When V=90V : ");
V=90;//V
//V<Vz1 & Vz2; Breakdown will not occur
I1=I01/2;//micro A(For D1)
disp(I1,"For D1, Current is (micro A)");
I2=-I01/2;//micro A
disp(I2,"For D2, Current is (micro A)");
V2=Eta*VT*log(1-I01/I02);//V
V1=V+V2;//V
disp(V1,"Voltage V1(V) : ");
format('v',5);
V2=V2*1000;//mV
disp(V2,"Voltage V2(mV) : ");
disp("When V=110V : ");
V=110;//V
//V>Vz1 //D1 breakdown & D2 reverse biased
I=I01;//micro A
disp(I,"Current in the circuit is (micro A)");
V1=-Vz1;///V
V2=-(V-Vz2);//V
disp(V1,"Voltage V1(V) : ");
disp(V2,"Voltage V1(V) : ");
