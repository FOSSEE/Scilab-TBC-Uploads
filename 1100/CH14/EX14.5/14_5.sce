clc
//initialisation of variables
HV=4344 //Btu/lb
m=56 //lb
R=1.986 //Btu/lb mol R
Tb=530 //R
//Calculations
HR=m*HV
Eb=-HR-R*Tb*(2-3)
printf ('Constant pressure heating value = %.1f Btu/lb formula wt',Eb)
