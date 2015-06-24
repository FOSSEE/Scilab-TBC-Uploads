clc
disp("Example 12.2")
printf("\n")

printf("Given")
disp("The system ABC is DELTA connected")
disp("Effective line voltage is 120V")
disp("The three impedances are 5(45 deg)")
Zmag=5;Zph=45;
//Let maximum line voltage is Vmax
Vmax=120*sqrt(2)
//From fig 12.7(a)
//VAB=Vmax(120 deg)
//VBC=Vmax(0 deg)
//VCA=Vmax(240 deg)

//From figure 12.8
IABmag=Vmax/Zmag
IABph=120-Zph
printf("IAB=%3.2f(%d deg)\n",IABmag,IABph);

IBCmag=Vmax/Zmag
IBCph=0-Zph
printf("IBC=%3.2f(%d deg)\n",IBCmag,IBCph);

ICAmag=Vmax/Zmag
ICAph=240-Zph
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