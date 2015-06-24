

//example 14.16
//design an irrigation channel by Einstein equation
clc;funcprot(0);
//given
Q=45;              //discharge
c=55;              //bed load concentraion
d=0.3;             //average grain diameter
gamma_w=9.81;      //unit weigth of water
G=2.67;            //specific gravity of soil
f=0.964;           //silt factor

//taking channel width as B=28 m(slightly less than P)
B=28;
qs=c/B;

fi=(qs/(gamma_w*G))*(1/(G-1))^0.5*(1000000000/(gamma_w*d^3))^0.5;
//from fig. 14.6 we get value of sci
//using the sci equation and Manning formula and on simplifications we get
R=(2.4296)^(3/7);
S=0.4083/(1000*1.463);
//solving equation of R for trapezoidal section of side slope 1/2 we get
y=poly([-40.96,24.73,0.5],'x','c');
D=roots(y);
//we get D= -51.064253   and 1.6042534  
//taking
D=1.6042534;
D=round(D*10)/10;
mprintf("Width of channel section=%i m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
