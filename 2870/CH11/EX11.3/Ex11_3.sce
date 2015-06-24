clc;clear;
//Example 11.3

//given data
mA=0.05;
P1=0.14;
P5=0.32;
P7=0.8;
h1=239.16;
h2=255.93;
h3=55.16;
h5=251.88;
h6=270.92;
h7=95.47;

//calculations
h4=h3;//throttling
h8=h7;//throttling
// E out = E in
// mA*h5 + mB*h3 = mA*h8 + mB*h2
mB=mA*(h5-h8)/(h2-h3);
QL=mB*(h1-h4);
// W in = Wcomp I,in + Wcomp II,in
Win=mA*(h6-h5)+mB*(h2-h1);
COPR=QL/Win;
disp(mB,'the mass flow rate of the refrigerant through the lower cycle in kg/s');
disp(QL,'the rate of heat removal from the refrigerated space in kW');
disp(Win,'the power input to the compressor in kW');
disp(COPR,'the coefficient of performance of this cascade refrigerator');
