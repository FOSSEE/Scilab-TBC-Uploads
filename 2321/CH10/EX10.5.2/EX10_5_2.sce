//Example No. 10.5.2
clc;
clear;
close;
format('v',6);
N=5;//no. of turns
f=300;//MHz(Frequency)
c=3*10^8;//m/s(speed of light)
disp("Part (i)");
lambda=c/(f*10^6);//m(Wavelength)
C_BY_lambda=1;//(Circumference/wavelength)
disp("Near optimum circumference is "+string(C_BY_lambda)+"*lambda");
C=lambda;//m(Circumference)
disp(C,"Near optimum circumference in meter : ");
disp("Part (ii)");
alfa=14;//degree//(Pitch angle)//for near optimum
S_BY_lambda=C_BY_lambda*tand(alfa);
disp("Spacing is "+string(S_BY_lambda)+"*lambda");
S=C*tand(alfa);//m(Spacing)
disp(S,"Spacing in meter : ");
disp("Part (iii)");
Rin=140*C/lambda;//Ω(Input impedence)
disp(Rin,"Input impedence in Ω : ");
disp("Part (iv)");
HPBW=52/(C/lambda*sqrt(N*S/lambda));//degree(HPBW)
disp(HPBW,"HPBW in degree : ");
disp("Part (v)");
FNBW=115/(C/lambda*sqrt(N*S/lambda));//degree(FNBW)
disp(FNBW,"FNBW in degree : ");
disp("Part (vi)");
Do=15*(C/lambda)^2*N*(S/lambda);//unitless////Directivity
disp(Do,"Directivity(unitless) : ");
Do_dB=10*log10(Do);//dB(Directivity)
disp(Do_dB,"Directivity in dB : ");
disp("Part (vii)");
AR=(2*N+1)/2/N;//axial ratio
disp(AR,"Axial ratio : ");
disp("Part (viii)");
Rin=140*(C/lambda);//Ω(Input impedence)
//50 Ω line
Zo=50;//Ω(Output impedence)
Tau=(Rin-Zo)/(Rin+Zo);//Scaling factor
VSWR=(1+Tau)/(1-Tau);//(VSWR)
disp(VSWR,"VSWR for 50Ω line : ");
//75 Ω line
Zo=75;//Ω(Output impedence)
Tau=(Rin-Zo)/(Rin+Zo);//Scaling factor
VSWR=(1+Tau)/(1-Tau);//(VSWR)
disp(VSWR,"VSWR for 75Ω line : ");
