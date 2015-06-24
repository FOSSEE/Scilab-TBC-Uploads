clc
//initialisation of variables
r2= 0.0078 //lb water /lb dry air
r1= 0.0032 //lb water /lb dry air
h2= 25.33 //Btu/lb
h1= 12.9 //Btu/lb
pg= 0.1217 //psia
p= 14.7 //psia
h3= 13 //Btu/lb
n= 60
t2=70
t1=40
cpa=0.240
R2= 0.00788 //lb/lb of dry sir
w1= 0.00477 //lb/lb of dry sir
//CALCULATIONS
disp('Method 1')
w= r2-r1
q= h2-h1-w*h3
printf ('In method 1, Enthalpy =%.2f Btu/lb of dry air',q)
disp('Method 2')
R1= 0.622*(n/100)*(pg/(p-pg))
R2=0.00788
w2=R2-R1
//All constants are obtained from steam tables
Q=cpa*(t2-t1)+R2*(1092.6)-R1*(1079.6) -w2*h3
printf ('In method 2, Enthalpy = %.2f btu/lb of dry air',Q)
