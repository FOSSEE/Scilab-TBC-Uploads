clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 14.9
//Caption : Program to Prepare a Table of Temperature/Compostion Data
subplot(1,2,1)
P=101.33;//[kPa]
T=[333.15 343.15 348.15 353.15 353.25 363.15 373.15];
P1_sat=[52.22 73.47 86.40 101.05 101.33 136.14 180.04];
P2_sat=[19.92 31.16 38.55 47.36 47.56 70.11 101.33];
P_=P1_sat+P2_sat;
plot(P_,T,'b');

Ans=[T',P1_sat',P2_sat',P_'];
disp(Ans,'     T       P1_sat    P2_sat   P1_sat+P2_sat')
//Hence P lies between T=333.15 and 343.15
P=[101.33 101.33];
Tp=[330.15 343.15];
xgrid();
plot(P,Tp,'r--')

//Thus by interpolation
P=[50.14 104.63];
T_=[342.15 342.15];

plot(P,T_,'g--');

legend('P* vs T','P=101.33kPa','T=342.15K')
xtitle('T vs P1_sat + P2_sat','P1_sat + P2_sat(kPa)','T(K)')

T_=342.15;//[K]

subplot(1,2,2)

plot(P1_sat,T,'b')

//Hence P1_sat @ T=T_=342.15 by interpolation
P=[41 70];
Tp=[342.15 342.15];
xgrid();
plot(P,Tp,'r--')

//Thus by interpolation  P1_sat=71.3kPa
P=[71.3 71.3];
T_=[330.15 342.15];

plot(P,T_,'g--');


legend('P1_sat vs T','T=342.15K','P=71.3kPa')
xtitle('T vs P1_sat','P1_sat(kPa)','T(K)')

P_sat=71.3;
T(1)=342.15;
P=101.33;//[kPa]
P1_sat(1)=P_sat;
P2_sat(1)=P-P_sat;

y_I=approx(P1_sat/P,3);
y_II=approx(1-(P2_sat/P),3);
for(i=1:7)
  if(y_I(i)>1)
    y_I(i)=%nan;
  elseif(y_II(i)>1)
    y_II(i)=%nan;
  end
end

Ans=[T',y_I',y_II'];
disp(Ans,'      T      y1_I      y1_II')     

//End