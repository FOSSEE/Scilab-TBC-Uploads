clc
clear

//input
ib=-10;//base current in microamperes
rl=6;//load resistance in kilo ohms
v=30;//supply voltage in volts

//calculations
//when vce=0V
ic=v/rl;//collector current in milliamperes
//whenic=0mA
vce=v;//collector emitter voltage in volts
//line AB where A(Vce=0V,Ic=5mA) and B(Vce=30V,Ic=0mA) cuts characteristic curve at point P
//from co-ordinates of P
Vce=16;//collector emitter voltage in volts
Ic=2.4;//collector current in milliamperes
ie=Ic+(-ib/1000);//emitter current in amperes

//output
mprintf('the parameters of the operating point under the conditions specified are Vce=%3.0fV,Ic=%3.1fmA and Ie=%3.2fmA',Vce,Ic,ie)
