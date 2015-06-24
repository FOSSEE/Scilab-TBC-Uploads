clc
//initialisation of variables
mC=1 //lb
mO2=2.67 //lb
mN2=8.78 //lb
mCO2=3.67 //lb
mN2=8.78 //lb
tB=77 //F
deltaH=14087 //Btu/lb
CpCO2=0.196 //Btu/lb F
CpCO2f=0.3 //Btu/lb F
CpN2=0.248 //Btu/lb F
CpN2f=0.285 //Btu/lb F
//Calculations
t2= tB+ deltaH/(mCO2*CpCO2 + mN2*CpN2)
t2f=tB+ deltaH/(mCO2*CpCO2f + mN2*CpN2f)
//Results
printf ('In case 1, t2 = %.1f F',t2)
printf ('\n In case 2, t2f = %.1f F',t2f)
