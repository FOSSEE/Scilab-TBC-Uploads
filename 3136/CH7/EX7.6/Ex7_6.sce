clear all; clc;

disp("We have psi=lambda*[1-φ*(tanα1+tanß2)] and R=0.5+[(φ/2)*(tanß2-tanα1)]")
disp("We have tanα1+tanß2=(1-psi/lamda)=1.01")
disp("tanα1-tanß2=(1-2R)/φ=-0.545,or psi=lambda*(1-1.01*φ) and R=0.5+0.272*φ Hence φdash=0.495,assuming lamda to be constant we can determine the values of psi_dash and R_dash")

lambda=0.9
//Let (tanalpha1+tanbeta2)=x
x=1.01
phi_dash=0.495
psi_dash=lambda*[1-(phi_dash*(x))]
printf("\n psi_dash= %0.2f",psi_dash)

//Let= 0.5*(tanbeta2-tanalpha1=y
y=0.272
R_dash=0.5+[(phi_dash*0.272)]
printf("\n R_dash= %0.3f",R_dash)

