clc

ratio=1/8; //volume ratio; v1/v2
T1=1223; //K

cp_CO2=1.235; //kJ/kg K
cp_O2=1.088; //kJ/kg K
cp_N2=1.172; //kJ/kg K

n_CO2=0.13;
n_O2=0.125;
n_N2=0.745;

M_CO2=44;
M_O2=32;
M_N2=28;

m_CO2=M_CO2*n_CO2;
m_O2=M_O2*n_O2;
m_N2=M_N2*n_N2;

m=m_CO2 + m_O2 + m_N2;

// Let Fraction by mass be denoted by F
F_CO2=m_CO2/m;
F_O2=m_O2/m;
F_N2=m_N2/m;


cp=F_CO2*cp_CO2 + F_O2*cp_O2 + F_N2*cp_N2;

R0=8.314;
R=F_CO2*R0/M_CO2 + F_O2*R0/M_O2 + F_N2*R0/M_N2;

cv=cp - R;
n=1.2;

disp("(i) The workdone")
T2=T1*(ratio)^(n-1);
W=R*(T1-T2)/(n-1);
disp("W=")
disp(W)
disp("kJ/kg")


disp("(ii) The heat flow")
du=cv*(T2-T1);
Q=du + W;
disp("Q=")
disp(Q)
disp("kJ/kg")


disp("(iii) Change of entropy per kg of mixture")
ds_1A=R*log(1/ratio); //isothermal process
ds_2A=cv*log(T1/T2);

ds_12=ds_1A - ds_2A;
disp("change of entropy=")
disp(ds_12)
disp("kJ/kg K")