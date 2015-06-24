clc
//initialisation of variables
m= 10 //lb
cp= 0.180 //Btu/lb F
cp1= 0.235 //Btu/lb F
L= 15.8 //btu/lb
L1= 120 //btu/lb
T1= 70 //F
T2= 235 //F
T3= 832 //F
//CALCULATIONS
Qa= m*cp*(T2-T1)
Qb= m*L
Qc= m*cp1*(T3-T2)
Qd= m*L1
Q= Qa+Qb+Qc+Qd
//RESULTS
printf ('Heat required= %.f Btu',Q)
