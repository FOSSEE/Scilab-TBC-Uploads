clc
clear
//Initialization of variables
r=1.75 //ft
F1=72 //lb
F2=24 //lb
n=500 //rpm
m=1.8 //lb
mi=15 //min
Qh=20000 //Btu/lb
//calculations
Bhp=2*%pi*r*F1*n/33000
Fhp=2*%pi*r*F2*n/33000
Ihp=Bhp+Fhp
Fc=m*60/mi
Bsfc=Fc/Bhp
Isfc=Fc/Ihp
etam=Bhp/Ihp *100
etabt=Bhp*2545/(Fc*Qh)
etait=Ihp*2545/(Fc*Qh)
//results
printf("Thermal efficiency = %d percent",etam)
printf("\n Brake thermal effficiency = %.1f percent",etabt*100)
printf("\n Indicated thermal effficiency = %.1f percent",etait*100)
