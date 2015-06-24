clc;
mCO2=2;
mH2O=3;
mN2=(3*79/21);
m_C2H6O=46;
Tadp=mCO2+mN2;
Tap=mCO2+mN2+mH2O;

nl=0.01704;
n=1;

n1=nl*Tadp/(1-nl)
m=[(mH2O-n1)*18/m_C2H6O]
disp(m)
