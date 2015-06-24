//Chapter-1, Example 1.9, Page 23
//=============================================================================
clc;
clear;
//INPUT DATA
t2=2750;//temperature in degree centigrade for tungsten lamp
P=150;//power in watts
V=230;//voltage in volts
t1=16;//temperature in degree centigrade
a0=0.0047;//temperature coefficient of tungsten in per degree centigrade
//CALCULATIONS
R2=(V*V)/P;
a1=1/((1/a0)+t1);//temperature coefficient of resistant at 16 degree centigrade
R2=(V*V)/P;//Resistance of the filament of the lamp under normal working condition
R1=R2/[1+(a1*(t2-t1))];//resistance of copper wire  in ohm at 52 degree centigrade
I2=V/R2;//normal current taken by lamb
I1=V/R1;//current taken at the moment of switching on
//OUTPUT
mprintf("Thus the normal current taken by lamb and current taken at the moment of switching on are %1.4f A and %1.4f A respectively ",I2,I1);

//=================================END OF PROGRAM==============================
