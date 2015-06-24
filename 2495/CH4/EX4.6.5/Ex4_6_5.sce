clear
clc
P1=2/100*101325;//partial pressure of O2 in Pa
P2=8/100*101325;//partial pressure of N2 in Pa
Kh1=2.53*10^9;//Henry's law constant for O2 in Pa 
Kh2=5.47*10^9;//Henry's law constant for N2 in Pa
X1=(P1/Kh1);//mole fraction of O2 
X2=(P2/Kh2);//mole fraction of N2 
K=(X1/X2);
P=1;//in atm
M1=(K/(P+K))*100;//mol % of O2
printf('M1=%.2f',M1)
M2=100-M1;//mol % of N2
printf('\nM2=%.2f',M2)
X=X1+X2;//total mole fraction
N=X*(1000/18);//in mol
Kf=1.86;//Kkg/mol
DelTf=(Kf*N);//freezing point of saturated water in K
printf('\nDelTf=%.5f',DelTf)

//Freezing point will be negative of DelTf
//There are some errors in the solution given in textbook
//page 120
