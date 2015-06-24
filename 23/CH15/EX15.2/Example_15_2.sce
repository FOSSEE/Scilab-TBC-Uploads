clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 15.2
//Caption : Program to Prepare a Thermodynamic Analysis of Linde System


State=['Superheated Vapor','Superheated Vapor','Superheated Vapor','Saturated Liqiud','Saturated Vapor','Superheated Vapor'];
T=[300 300 207.1 111.5 111.5 295];
P=[1 60 60 1 1 1];
H=[1199.8 1140 772 285.4 796.9 1188.9];
S=[11.629 9.359 7.798 4.962 9.523 11.589];
Given=[T',P',H',S'];
disp(Given,'   T/K    P/kPa    H/kJ/Kg    S/kJ/kg/K',State')
T_sigma=300;//[K]
rQ=5;//[KJ]
rW=1000;//[KJ/s]
z=approx((H(6)-H(2)-rQ)/(H(6)-H(4)),4);

//rW_ideal = (dH*rm) - (T_sigma(dS*rm))
rW_ideal=approx(((z*H(4))+((1-z)*H(6))-H(1))-((T_sigma)*((z*S(4))+((1-z)*S(6))-S(1))),1);

//(a) Compression/cooling
rQ_a=(H(2)-H(1))-rW;//[kJ]
rS_a=approx((S(2)-S(1))-(rQ_a/T_sigma),4);//[kJ/Kg/K]

rW_a=T_sigma*rS_a;//[KJ/Kg]

//(b) Exchanger
rS_b=approx(((S(6)-S(5))*(1-z))+(S(3)-S(2))-(rQ/T_sigma),4);//[kJ/Kg/K]
rW_b=T_sigma*rS_b;//[KJ/Kg]

//(c) Throttle
rS_c=approx(((S(4)*z)+(S(5)*(1-z))-S(3)),4);//[KJ/Kg/K]
rW_c=T_sigma*rS_c;//[KJ/kg]

S=[rS_a rS_b rS_c];
pS=approx((S/sum(S))*100,1);
ES=[sum(S) sum(pS)];

W=approx([rW_ideal rW_a rW_b rW_c],1);
pW=approx((W/sum(W))*100,1);
EW=[sum(W) sum(pW)];
Ans=[S',pS'];
Process=['Compression/Cooling';'Exchanger';'Throttle'];

disp(Ans,'      Si     %',Process)
disp(ES,'Sum')
Ans=[W',pW'];

Process=['Ideal';'Compression/Cooling';'Exchanger';'Throttle'];
disp(Ans,'      Wi     %',Process)
disp(EW,'Sum')
