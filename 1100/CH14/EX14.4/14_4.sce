clc
//initialisation of variables
mO2=1.33 //lb
mCO2=3.67 //lb
CvO2=0.155 //Btu/lb F
CvCO2=0.165 //Btu/lb F
Cc=0.170 //Btu/lb F
t2=1000 //F
tB=68 //F
t=300 //F
mC=1
mO=4
//Calculations
deltaE1=mO2*CvO2*(t2-tB) + mCO2*CvCO2*(t2-tB)
deltaE2=mC*CC*(tB-t) + mO*CvO2*(tB-t)
E= -14087 //Btu
Q=deltaE1+E+deltaE2
//Results
printf ('Heat Transfer from the system = %.2f',Q)
