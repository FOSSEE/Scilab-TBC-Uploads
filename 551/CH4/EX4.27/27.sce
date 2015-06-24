clc
y=1.4
R=294.2; //J/kg.0C
p1=1*10^5; //N/m^2
T1=353; //K
V1=0.45; //m^3
V2=0.13; //m^3
p2=5*10^5; //N/m^2
cv=R/(y-1);

disp("(i) The mass of gas")
m=p1*V1/R/T1;
disp("m=")
disp(m)
disp("kg")


disp("(ii) The value of index ‘n’ for compression")
n=log(p2/p1)/log(V1/V2);
disp("n=")
disp(n)


disp("(iii) The increase in internal energy of the gas")
T2=T1*(V1/V2)^(n-1);
dU=m*cv*(T2-T1)/10^3;
disp("dU=")
disp(dU)
disp("kJ")


disp("(iv) The heat received or rejected by the gas during compression.")
W=m*R*(T1-T2)/(n-1)/10^3;
Q=dU+W;
disp("Q=")
disp(Q)
disp("kJ")