//Exa 7.7
clc;
clear;
close;
format('v',5);
//Given data :
Pc1=53;//in kW
V1=106;//in kV
Pc2=98;//in kW
V2=110.9;//in kV
Vph1=V1/sqrt(3);//in kV
Vph2=V2/sqrt(3);//in kV
//Formula : Pc=3*244/del*(f+25)*sqrt(r/d)*(Vph-Vdo)^2*10^-5;//kW/Km
disp("Using proportionality : Pc is proportional to (Vph-Vdo)^2");
disp("We have, Pc1/Pc2 = (Vph1-Vdo)^2/(Vph2-Vdo)^2");
Vdo=(Vph1-sqrt(Pc1/Pc2)*(Vph2))/(1-sqrt(Pc1/Pc2));
V3=113;//in kV
Vph3=V3/sqrt(3);//in kV
Pc3=Pc2*(Vph3-Vdo)^2/(Vph2-Vdo)^2;//in kW
disp(Pc3,"Corona Loss at 113 kV in kW : ");
VLine=sqrt(3)*Vdo;//in kV
disp(VLine,"Disruptive critical voltage between lines(kV):  ");
