clear;
clc;

//Example13.8[Radiation Heat Transfer in Cylindrical Furnace]
//Given:-
ro=1,H=1;//Radius amd height of cylinder[m]
e1=0.8,e2=0.4;//Emissivities
T1=700,T2=500;//Top and base temperatures of furnace[K]
T3=400;//Side durface temperature[K]
F11=0,F12=0.38;
//Solution:-
A1=%pi*(ro^2);//[m^2]
A2=A1;//[m^2]
A3=2*%pi*ro*H;//[m^2]
F13=1-F11-F12;
F21=F12;//Top and Bottom are symmetric
F31=F13*(A1/A3);
F23=F13;
F32=F31;
function[i]=rad(J)
    i(1)=J(1)+(((1-e1)/e1)*((F12*(J(1)-(J(2))))+(F13*((J(1))-(J(3))))))-((T1^4)*(5.67*10^(-8)));
    i(2)=J(2)+(((1-e2)/e2)*((F21*(J(2)-J(1)))+(F23*(J(2)-J(3)))))-((T2^4)*(5.67*10^(-8)));
    i(3)=J(3)-((T3^4)*(5.67*10^(-8)));
    deff('[i]=rad(J)',['i_1=J(1)+(((1-e1)/e1)*((F12*(J(1)-(J(2))))+(F13*((J(1))-(J(3))))))-((T1^4)*(5.67*10^(-8)))','i_2=J(2)+(((1-e2)/e2)*((F21*(J(2)-J(1)))+(F23*(J(2)-J(3)))))-((T2^4)*(5.67*10^(-8)))','i_3=J(3)-((T3^4)*(5.67*10^(-8)))'])
   disp(J(3),J(2),J(1))
   Q1=A1*((F12*(J(1)-J(2)))+(F13*(J(1)-J(3))));//[kW]
   Q2=A2*((F21*(J(2)-J(1)))+(F13*(J(2)-J(3))));//[kW]
   Q3=A3*((F31*(J(3)-J(1)))+(F32*(J(3)-J(2))));//[kW]
   disp("kW",Q3/1000,Q2/1000,Q1/1000,"The net rates of radiation heat transfer at the three surfaces are")
    