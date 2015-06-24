clc;clear;
//Example 11.2

//given data
m=0.05;
P1=0.14;
T1=-10;
P2=0.8;
T2=50;
P3=0.72;
T3=26;

//from refrigerant tables
h1=246.36;
h2=286.69;
h3=87.83;
h2S=284.21;//at isentropic conditions

//calculations
h4=h3;//throttling
QL=m*(h1-h4);
Wm=m*(h2-h1);
nC=(h2S-h1)/(h2-h1);
COPR=QL/Wm;
disp(QL,'the rate of heat removal from the refrigerated space in kW');
disp(Wm,'the power input to the compressor in kW');
disp(nC,'the isentropic efficiency of the compressor');
disp(COPR,'he coefficient of performance of the refrigerator');
