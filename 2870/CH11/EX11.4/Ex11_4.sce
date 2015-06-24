clc;clear;
//Example 11.4

//given data
P1=0.14;
P5=0.32;
P7=0.8;
h1=239.16;
h2=255.93;
h3=251.88;
h5=95.47;
h7=55.16;

//from saturated liquid-vapour table
//at P=0.32 MPa
hf=55.16;
hfg=196.71;

//calculations
h8=h7;//throttling
h6=h5;//throttling
//the quality at state 6
x6=(h6-hf)/hfg;
qL=(1-x6)*(h1-h8);
// W in = Wcomp I,in + Wcomp II,in
//enthalaoy at state 9
// E out = E in
h9=x6*h3+(1-x6)*h2;
// s9 = s4 i.e isentropic process
//at 0.8MPa and s4=0.9416 kJ/kg
h4=274.48;
Win=(1-x6)*(h2-h1)+(1)*(h4-h9);
COPR=qL/Win;
disp(x6,'the fraction of the refrigerant that evaporates as it is throttled to the flash chamber');
disp(qL,'the amount of heat removed from the refrigerated space in kJ/kg');
disp(Win,'the compressor work per unit mass of refrigerant flowing through the condensor in kJ/kg');
disp(COPR,'the coefficient of performance');
