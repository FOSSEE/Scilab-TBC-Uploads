// Ex 34 Page 377

clc;clear;close;
// Given
l=20;//km
P=10000;//kW
V=11;//kV
pf=0.707;//lagging
R=0.02;//ohm/km/phase
X=0.07;//ohm/km/phase

//for pf = 0.707

IL=P*10**3/sqrt(3)/(V*1000)/pf;//A
VRphase=V*1000/sqrt(3);//V
R_phase=l*R;//ohm
X_phase=l*X;//ohm
Z_phase=R_phase+%i*X_phase;//ohm
Vd_phase=IL*(pf-%i*pf)*Z_phase;//V
VS=(Vd_phase+VRphase);//V
regulation=(VS-VRphase)/VRphase*100;//%
printf("regulation = %.f percent",regulation)
PL=3*IL^2*R_phase/1000;//kW
Po=P+PL;//kW
eta=P/Po*100;//%
printf("\n Efficiency = %.f percent",eta)

//for pf2=0.9;//lagging
pf=0.9;//lagging
IL=P*10**3/sqrt(3)/(V*1000)/pf;//A
VRphase=V*1000/sqrt(3);//V
R_phase=l*R;//ohm
X_phase=l*X;//ohm
Z_phase=R_phase+%i*X_phase;//ohm
Vd_phase=IL*(pf-%i*.435)*Z_phase;//V
VS=(Vd_phase+VRphase);//V
regulation=(VS-VRphase)/VRphase*100;//%
printf("\n\n regulation = %.1f percent",regulation)
PL=3*IL^2*R_phase/1000;//kW
Po=P+PL;//kW
eta=P/Po*100;//%
printf("\n Efficiency = %.f percent",eta)
//ans wrong for 2nd part in the book.
