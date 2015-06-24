clc
//initialisation of variables
m= 40 //lb
m1= 10 //lb
cp= 1.00 //Btu/lb F
cp1= 0.501 //Btu/lb F
cp2= 0.092 //Btu/lb F
L= 143.3 //btu/lb
L1= 120 //btu/lb
T1= 22 //F
T2= 32 //F
T3= 40 //F
T4= 70 //F
//CALCULATIONS
Qa= cp1*(T2-T1)
Qb= L
Qc= cp*(T3-T2)
Qd= m*cp*(T3-T4)
mi= -Qd/(Qa+Qb+Qc)
Qe= m1*cp2*(T3-T4)
mi1= -Qe/(Qa+Qb+Qc)
//RESULTS
printf ('Ice weight= %.2f lb of ice',mi)
printf (' \n Additional ice required= %.3f lb of ice',mi1)

