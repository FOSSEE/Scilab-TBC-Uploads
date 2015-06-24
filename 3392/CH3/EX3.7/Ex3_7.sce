clc
// initialization of variables
clear
tR=0.02 // t/R ration
E_A=69 //G Pa
v_A=0.33  // Poisson's ratio
alpha_A=21.6*10^-6 // /degree Celcius (Coefficient of expansion)
E_S=207 // G Pa
v_S=0.280
alpha_S=10.8*10^-6 // /degree Celcius (Coefficient of expansion)
// calculations
// Sig_LA=a*p+b*delT+c*sig_thS
// Sig_LS=v_S*Sig_thS+d*delT
E_S=E_S*10^9
E_A=E_A*10^9
a=1/tR*E_A/E_S
b=-2/3*alpha_S*E_S
c=-E_A/E_S
d=-alpha_S*E_S
// SigthS=e*p+f*delT
// SigthA=g*p+h*delT
e=37.16
f=0.8639*10^6
g=1/tR-e
h=-f
// results
p=689.4 // kPa
delT=100 // degree Celcius
p=p*10^3 // Pa
SigthA=g*p+h*delT
SigthS=e*p+f*delT
Sig_LA=a*p+b*delT+c*SigthS
Sig_LS=v_S*SigthS+d*delT
printf('Thus, for p = %.1f k Pa and delT = %.d degree celcius \n',p/10^3,delT)
printf(' SigthA = %.1f M Pa,   Sig_LA = %.d M Pa \n',SigthA/10^6,Sig_LA/10^6)
printf(' SigthS = %.1f M Pa,   Sig_LS = %.d M Pa',SigthS/10^6,Sig_LS/10^6)
