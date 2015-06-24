clc
clear

//input
g=4;//mutual conductance of a triode in millisiemens
u=25;//amplification factor
l=20;//load in kilo ohms

//calculations
ra=u/g;//slope resistance in kilo ohms
av=(u*l)/(ra+l);//voltage gain

//output
mprintf('with aload resistance of 20 kilo ohms this triode will give a voltage amplification of %3.2f',av)
