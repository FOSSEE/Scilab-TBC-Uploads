// Chapter7
// Page.No-232
// Example_7_6
// Sketch the Transfer Curve
// Given
clc;
clear;
Vz1=1;         //in V
Vz2=2.2;         //in V
Rf=10000;           //in Ohm
Ri=10000;           //in Ohm

Vzp=3-0.7;
printf("\n Vz+in  %.2f V",Vzp);
Vzm=-(4-0.7);
printf("\n Vz_in  %.2f V",Vzm);
//Ra||Rf=8k
Ra=8000*Rf/(Rf-8000);
Av2=0.8;
Av1=1;
//graph
t=-50:0.001:50;
L=length(t);
for i=1:L
        if t(i)<-40 then
        x1(i)=0.8*t(i)-8;
     elseif t(i)<30+0.01 then 
        x1(i)=1*t(i);

    elseif t(i)>30 then
        x1(i)=0.8*t(i)+5.5;   
    end;
end;  
clf;  
plot2d1(t,x1);
xtitle('Transfer Characteristics','Vin','Vout')


