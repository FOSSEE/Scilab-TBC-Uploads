//Calculate the circuit elements
//Chapter 4
//Example 4.35
//page 356
clear;
clc; 
disp("Example 4.35")
R1dc=0.01;                    //DC resistance in ohms
V=400;                        //voltage in volts
r=1.5;                    //ratio of ac to dc resistance
R1=r*R1dc;                  //AC resistance in ohms
//at no-load
Io=20;                    //no-load current in amperes
SL=(3*Io^2*R1);        //I^2R loss in the stator phases in watts
FWL=300;                 //Friction and windage loss in watts
TL=1200;                    //total losses=no-load power input in watts
CL=TL-(SL+FWL);            //core loss in watt
CLp=CL/sqrt(3);              //core loss per phase
Vp=V/sqrt(3);                //voltage per phase
Rm=(Vp^3)/CL;                  //motor resistance
pf=CL/(Vp*Io);
phi0=acosd(pf);
Xm=Vp/(Io*sind(phi0));                //motor reactance
//Under blocked rotor test
Vb=100;                    //voltage in volts
Isc=45;                      //current in amperes
Vbp=100/sqrt(3);           //voltage per phase in volts
P=2750;                    //power supplied in watts
Ze=Vbp/Isc;                       //Motor impedance reffered to stator side in ohms
Re=P/(3*Isc^2);
R2=Re-R1;                //rotor resistance referred to stator side
Xe=sqrt(Ze^2-Re^2);
//assuming X1=X2
X2=Xe/2
X1=X2;
printf("Thus the elements of the equivalent circuit are:");
printf("\nRm=%fohms",Rm);
printf("\nXm=%fohms",Xm);
printf("\n\nR1=%fohms",R1);
printf("\nrotor resistance referred to stator side,R2=%fohms",R2);
printf("\nequivalent resistance referred to stator side,Re=%fohms",Re);

printf("\n\nX1=%fohms",X1);
printf("\nrotor reactance referred to stator side,X2=%fohms",X2);
printf("\nequivalent reactance referred to stator side,Xe=%fohms",Xe);








