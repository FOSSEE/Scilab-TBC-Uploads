

//example 8.2
//calculate forces induced due to earthquake by responce spectrum method
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
beta=1;
I=2;
Fo=0.25;           //from table 8.2
                  //t=Sa/g;
t=0.19;           //from fig. 8.4
alphah=beta*I*Fo*t;
T=5.55*H^2/wb*(gammad/(gammaw*E))^0.5;
//(a) Base shear
W=l*gammad*(wt*H+((hsu/s)*hsu)/2);
Fb=0.6*W*alphah;
mprintf("Base shear=%f KN.",Fb);

//(b) Base moment
hbar=((wt*H^2/2)+((hsu/s)*hsu^2/6))/((wt*H)+(hsu/s)*hsu/2);
Mb=0.9*W*hbar*alphah;
mprintf("\nBase moment=%f KN-m.",Mb);

//(c) shear at 10m from top
Cv=0.08;
F10=Cv*Fb;
F10=round(F10);
mprintf("\nshear at 10m from top=%f KN.",F10);

//(d) Moment at 10m from top
Cm=0.02;
M10=Cm*Mb;
M10=round(M10);
mprintf("\nmoment at 10m from top=%f KN.",M10);
//(e) Hydrodynamic pressure
//at 10m from top
y=8;
W10=1680;
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
Cm=0.735;
Cy=(Cm/2)*(y*(2-y/hw)/hw+(y*(2-y/hw)/hw)^0.5);
p=Cy*alphah*gammaw*hw;
P100=0.726*p*y;
Mp100=0.299*p*y^2;
mprintf("\nHydrodynamic forces:\nAt 10m from top: F=%f kn;M=%fkn-m\nAt 100m from top: F=%i kn;M=%ikn-m.",P10,Mp10,P100,Mp100);


