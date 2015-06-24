clc
clear
//Initialization of variables
d1=0.5 //ft
t1=200 //F
t2=80 //F
ta=400 //F
rho=0.0662 //lbm/ft^3
mum=0.0483 //lbm/ft hr
k=0.0167 //Btu/hr ft F
cp=0.2408 //Btu/lbm F
rho2=0.0567 //lbm/ft^3
mum2=0.0542 //lbm/ft hr
k2=0.0190 //Btu/hr ft F
cp2=0.2419 //Btu/lbm F
g=32.17
//calculations
ti=(t1+t2)/2
bet=1/(460+ti)
Pr1=cp*mum/k
Gr1=d1^3 *rho^2 *3600^2 *g*bet*(t1-t2)/mum^2
Gr1pr1=Gr1*Pr1
hc1=k/d1 *0.53*(Gr1pr1)^0.25
Q1=hc1*(t1-t2)
tf=(ta+t2)/2
bet2=1/(460+tf)
Pr2=cp2*mum2/k2
Gr2=d1^3 *rho2^2 *3600^2 *g*bet2*(ta-t2)/mum2^2
Gr2pr2=Gr2*Pr2
hc2=k2/d1 *0.53*(Gr2pr2)^0.25
Q2=hc2*(ta-t2)
per=100*(Q2-Q1)/Q1
//results
printf("Coefficient of heat transfer in case 1= %.3f Btu/hr ft^2 F",hc1)
printf("\n Coefficient of heat transfer in case 2 = %.3f Btu/hr ft^2 F",hc2)
printf("\n Percentage change = %d percent",per)
