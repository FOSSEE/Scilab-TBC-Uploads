clc;
nC=0.120;//kmol
nO=0.115;//kmol
nN=0.765;//kmol

m_C=44;//kg/kmol
m_O=32;//kg/kmol
m_N=28;//kg/kmol

miC=m_C*nC;//kg
miO=m_O*nO;//kg
miN=m_N*nN;//kg

m=miC+miO+miN;

cpC=1.271;//kJ/kgK
cpO=1.110;//kJ/kgK
cpN=1.196;//kJ/kgK

cp=cpC*(miC/m)+cpO*(miO/m)+cpN*(miN/m);

R_=8.3145;//kJ/kg K

R=(miC/m)*(R_/m_C)+(miO/m)*(R_/m_O)+(miN/m)*(R_/m_N);

cv=cp-R;

T1=1000+273;
v1!v2=1/7;
n=1.25;
T2=T1*(v1!v2)^(n-1);

W=R*(T2-T1)/(n-1);
disp("Work done by th gas mixture is:");
disp("kJ/kg",-W,R,T2);

disp("heat supplied is:");
Q=[cv*(T2-T1)]-W;
disp("kJ/kg",Q);
