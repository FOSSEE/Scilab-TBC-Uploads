// Chapter7
// Page.No-231
// Example_7_5
// Sketch the Transfer Curve
// Given
clc;
clear;
Vz1=1;         //in V
Vz2=2.2;         //in V
Rf=12000;           //in Ohm
Ri=10000;           //in Ohm
R2=15000;           //in Ohm
R1=20000;           //in Ohm
Vbreak1=Vz1+0.7;
printf("\n Vbreak1_in +_ %.2f V",Vbreak1);
Vbreak2=Vz2+0.7;
printf("\n Vbreak2_in +_ %.2f V",Vbreak2);

Av=-Rf/Ri;
printf("\n Av %.1f ",Av);
Av1=-Rf*(Ri+R1)/(R1*Ri);
printf("\n Av1 %.1f ",Av1);

Av2=-Rf*(Ri*R1+R1*R2+R2*Ri)/(R1*Ri*R2);
printf("\n Av2 %.1f ",Av2);
Vbreak1_out=Av*Vbreak1
Vbreak2_out=Vbreak1_out+Av2*(Vbreak2-Vbreak1);
printf("\n Vbreak1_out %.2f V ",Vbreak1_out);
printf("\n Vbreak2_out %.2f V",Vbreak2_out);
//graph
t=-5:0.01:5;
L=length(t);
for i=1:L
    //if t(i)<  then
    //end
    if t(i)<-2.9 then
        x1(i)=Av2*t(i)-3;
     elseif t(i)<-1.15 then 
        x1(i)=Av1*t(i)-0.67;
    elseif t(i)<1.15 then
        x1(i)=Av*t(i) ;
    elseif t(i)<2.9 then
        x1(i)=Av1*t(i)+0.67 ;
    elseif t(i)>2.9 then
        x1(i)=Av2*t(i)+3;   
    end;
end;  
clf;  
plot2d1(t,x1);
xtitle('Transfer Characteristics','Vin','Vout')


