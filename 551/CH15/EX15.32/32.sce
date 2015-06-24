clc
e1=0.3;
e2=0.8;
e3=0.04;
A1=1; //m^2
A2=A1;
A3=A1;

// (E_b1 - E_b3)/[(1-e1)/e1+1+(1-e3)/e3]=(E_b3 - E_b2)/[(1-e3)/e3+1+(1-e2)/e2]

// a*(T1^4-T3^4)/(1/e1+1/e3-1)=a*(T3^4-T2^4)/(1/e3+1/e2-1)

// T3^4=0.48*(T1^4+1.08*T2^4)

// Q12=a*(T1^4-T2^4)/(1/e1+1/e2-1)
// Q13=a*(T1^4-T3^4)/(1/e1+1/e3-1)

// %reduction=(Q_12-Q13)/Q12;
%reduction=1-0.131*0.52;
disp("Percentage reduction in heat flow due to shield =")
disp(%reduction)
disp("%")