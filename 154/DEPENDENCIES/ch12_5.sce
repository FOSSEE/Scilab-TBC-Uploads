clc
disp("Example 12.5")
printf("\n")

printf("Given")
disp("The system ABC is DELTA connected")
disp("Maximum line voltage is 339.4V")
disp("The three impedances are 10(0 deg),10(30 deg),15(-30 deg)")

ZABmag=10;ZABph=0;
ZBCmag=10;ZBCph=30;
ZCAmag=15;ZCAph=-30;
//Let maximum line voltage is Vmax
Vmax=339.4
//From fig 12.7(a)
//VAB=Vmax(120 deg)
//VBC=Vmax(0 deg)
//VCA=Vmax(240 deg)

//From figure 12.15
IABmag=Vmax/ZABmag
IABph=120-ZABph
printf("IAB=%3.2f(%d deg)\n",IABmag,IABph);

IBCmag=Vmax/ZBCmag
IBCph=0-ZBCph
printf("IBC=%3.2f(%d deg)\n",IBCmag,IBCph);

ICAmag=Vmax/ZCAmag
ICAph=240-ZCAph
printf("ICA=%3.2f(%d deg)\n",ICAmag,ICAph);

//Applying KCL equation 
//IA=IAB+IAC
//IB=IBC+IBA
//IC=ICA+ICB

x=IABmag*cos((IABph*%pi)/180);
y=IABmag*sin((IABph*%pi)/180);
z=complex(x,y)

x1=ICAmag*cos((ICAph*%pi)/180);
y1=ICAmag*sin((ICAph*%pi)/180);
z1=complex(x1,y1)

x2=IBCmag*cos((IBCph*%pi)/180);
y2=IBCmag*sin((IBCph*%pi)/180);
z2=complex(x2,y2)

IA=z-z1;
[RA,ThetaA]=polar(IA)

IB=z2-z;
[RB,ThetaB]=polar(IB)

IC=z1-z2
[RC,ThetaC]=polar(IC)

disp("Therefore")

printf("\nIA=%3.2f(%d deg)A\n",RA,ThetaA*(180/%pi));
printf("\nIB=%3.2f(%d deg)A\n",RB,ThetaB*(180/%pi));
printf("\nIC=%3.2f(%d deg)A\n",RC,ThetaC*(180/%pi));