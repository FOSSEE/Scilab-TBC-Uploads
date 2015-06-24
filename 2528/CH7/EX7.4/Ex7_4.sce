// Chapter7
// Page.No-229
// Example7_4
// Sketch the Transfer Curve
// Given
clc;
clear;
Vz=3.9;         //in V
Rf=20000;           //in Ohm
Ri=5000;           //in Ohm
Ra=10000;           //in Ohm
Vbreak=Vz+0.7;
printf("\n Vbreak +_ %.2f V",Vbreak);

Av=-Rf/Ri;
printf("\n Av %.2f ",Av);

Av2=(-Rf*Ra/(Rf+Ra))/Ri;
printf("\n Av2 %.2f ",Av2);
//Graph
t=-4:0.001:4;
L=length(t);
for i=1:L
    if t(i)<-1.15
        x1(i)=Av2*t(i)+3.0705;
       
     
   elseif  t(i)<1.15
        x1(i)=Av*t(i) ;
       
   
      elseif t(i)>1.15
        x1(i)=Av2*t(i)-3.0705 ;
      end ;
end;    
clf;
plot2d1(t,x1);
xtitle('Transfer Characteristics','Vin','Vout')
xgrid;
