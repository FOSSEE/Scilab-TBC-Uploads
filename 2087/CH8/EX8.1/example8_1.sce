

//example 8.1
//calculate forces induced due to earthquake
clc;funcprot(0);
//given
H=100;              //heigth of dam
wb=70;              //width of base of dam
wt=7;               //width of top of dam
l=1;                //length of dam
hw=98;              //heigth of water in dam
hsu=90;             //heigth of slope on downstream side
s=1/0.7;            //slope on downstream side
gammad=24;          //unit weigth of dam
gammaw=9.81;        //unit weigth of water
E=2.05D7;           //modulus of elasticity

//(a) inertial forces and moments
alpha0=0.05;        //from table 8.1
alphah=2*alpha0;
//at 10m from top
F10=integrate('25.2-0.25*y','y',0,10);
M10=integrate('25.2*(1-0.01*y)*(10-y)','y',0,10);
//at 100m below top
F100=F10+integrate('0.15*(1-0.01*y)*16.8*y','y',10,100);
M100=M10+90*F10+integrate('0.15*(1-0.01*y)*16.8*y*(100-y)','y',10,100);
mprintf("Inertial forces:\nAt 10m from top: F=%f kn;M=%ikn-m\nAt 100m from top: F=%f kn;M=%ikn-m.",F10,M10,F100,M100);

//(b) hydrodynamic pressure and moment
//at 10m from top
y=8;
W10=1680;
alphah=F10/W10;
Cm=0.735;
Cy=(Cm/2)*((y*(2-y/hw)/hw)+(y*(2-y/hw)/hw)^0.5);
p=Cy*alphah*gammaw*hw;
P10=0.726*p*y;
Mp10=0.299*p*y^2;
P10=round(P10*100)/100;
Mp10=round(Mp10*100)/100;
//at 100m from top
y=98;
W100=84840;
alphah=F100/W100;
Cm=0.735;
Cy=(Cm/2)*(y*(2-y/hw)/hw+(y*(2-y/hw)/hw)^0.5);
p=Cy*alphah*gammaw*hw;
P100=0.726*p*y;
Mp100=0.299*p*y^2;
mprintf("\nHydrodynamic forces:\nAt 10m from top: F=%f kn;M=%fkn-m\nAt 100m from top: F=%i kn;M=%ikn-m.",P10,Mp10,P100,Mp100);


