clc
clear

//input
rl=2.5;//resistance of load in kilo ohms
//from VI charecteristic curves
//for bias current of -10uA
vce1=21;//in volts
ic1=3.6;//in mA
ib1=-10;//in uA
//for bias current of -15uA
vce2=14.75;//in volts
ic2=6;//in mA
ib2=-15;//in uA
//from input characteristic curve
vbe1=0.75;
vbe2=0.45;
Ib1=40;
Ib2=0;

//calculations
b=((-ic2-(-ic1))*1000)/(ib2-ib1);//current gain
s=(vbe1-vbe2)/(Ib1-Ib2);//slope of curve
S=s*5;//for change in 5mV
v=(vce1-vce2)/S;

//output
mprintf('the voltage and current gains are %3.0f and %3.0f',v,b)
