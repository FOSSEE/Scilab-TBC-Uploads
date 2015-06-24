// Exa 3.15
format('v',6);clc;clear;close;
// Given data
Ra = 5;// in k ohm
Rb = 1;// in k ohm
V = 25;// in V 
Vrange = 5;// in V
S = 1;// in k ohm/V
// True voltage across Rb 
Vb = (Rb/(Ra+Rb))*V;// in V
disp(Vb,"The true voltage across Rb in V is");
R_V = S*Vrange;// in k ohm
Req = (Rb*R_V)/(Rb+R_V);// in k ohm
V1 = (Req/(Req+Ra))*V;//reading on the voltmeter 1  in V
disp(V1,"The reading on the voltmeter 1 in V is");
S = 20;// in k ohm/V
R_V = S*Vrange;// in k ohm
Req = (Rb*R_V)/(Rb+R_V);// in k ohm
V2 = (Req/(Ra+Req))*V;//reading on the voltmeter 2 in V
disp(V2,"The reading on the voltmeter 2 in V is");
PerError1 = ((Vb-V1)/Vb)*100;//percentage error in meter 1 in % 
disp(PerError1,"The percentage error in meter 1 in % is"); 
PerError2 = ((Vb-V2)/Vb)*100;//percentage error in meter 2 in %
disp(PerError2,"The percentage error in meter 2 in % is");
PerAccuracy1 = 100 - PerError1;//percentage accuracy of meter 1 in %
disp(PerAccuracy1,"The percentage accuarcy of meter 1 in % is");
PerAccuracy2 = 100-PerError2;//percentage accuracy of meter 2 in %
disp(PerAccuracy2,"The percentage accuracy of meter 2 in % is");
disp("Thus voltmeter 2 is "+string(PerAccuracy2)+" % accurate while voltmeter 1 is "+string(PerAccuracy1)+" % accurate")
