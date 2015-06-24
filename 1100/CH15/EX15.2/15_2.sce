clc
//initialisation of variables
p= 15 //psia
p1= 75 //psia
T= 550 //R
T1= 1700 //R
k= 1.4
n= 75
cp= 0.24
//CALCULATIONS
Ta= T*(p1/p)^((k-1)/k)
Tc= T1/((p1/p)^((k-1)/k))
Ta1= (n/100)*(Tc-Ta)+Ta
Tc1= Ta+Tc-Ta1
Q1= cp*(T1-Ta1)
Q2= cp*(Tc1-T)
Wnet= Q1-Q2
n1= Wnet/Q1
//CALCULATIONS
printf ('Efficiency = %.2f ',n1)
