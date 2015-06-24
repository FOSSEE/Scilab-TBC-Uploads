clc
//initialisation of variables
p= 15 //psia
p1= 75 //psia
T= 550 //R
T1= 1700 //R
k= 1.4
//CALCULATIONS
Ta= T*(p1/p)^((k-1)/k)
Tc= T1/((p1/p)^((k-1)/k))
cp= 0.24
Q1= cp*(T1-Ta)
Q2= cp*(Tc-T)
Wnet= Q1-Q2
n= Wnet/Q1
hb= 422.59 //Btu/lb
hc= 269.27 //Btu/lb
ha= 208.41 //Btu/lb
hd= 131.46 //btu/lb
Q1i= hb-ha
Q2i= hc-hd
Wnet1= Q1i-Q2i
n1= Wnet1/Q1i
//RESULTS
printf ('Efficiency = %.2f ',n)
printf ( 'Efficiency = %.3f ',n1)
