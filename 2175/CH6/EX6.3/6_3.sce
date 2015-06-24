clc;
miO=0.2314;//kg/kmole
miN=0.7553;//kg/kmole
miA=0.0128;//kg/kmole
miC=0.0005;//kg/kmole

m_O=31.999;//kg/kmole
m_N=28.013;//kg/kmole
m_A=39.948;//kg/kmole
m_C=44.010;//kg/kmole

niO=miO/m_O;//kmole
niN=miN/m_N;//kmole
niA=miA/m_A;//kmole
niC=miC/m_C;//kmole

n=niO+niN+niA+niC;//kmole

V_O=niO*100/n;
V_N=niN*100/n;
V_A=niA*100/n;
V_C=niC*100/n;

p=1;
piO=V_O*p/100;
piN=V_N*p/100;
piA=V_A*p/100;
piC=V_C*p/100;

disp("analysis of volume of Oxygen, Nitrogen, Argon and Carbon dioxide respectively are");
disp(V_C,V_A,V_N,V_O);

disp("partial pressure of Oxygen, Nitrogen, Argon and Carbon dioxide respectively are");
disp(piC,piA,piN,piO);
