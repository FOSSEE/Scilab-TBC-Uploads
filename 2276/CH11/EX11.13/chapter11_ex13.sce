clc
clear

//input
b=50;//current gain
rl=10;//load resistance in kilo ohms
rint=6.5;//internal resistance of an alternating source in kilo ohms
rinp=1;//input resistance in kiloohms

//calculations
v=(rl*b)/(rint+rinp);//voltage gain

//output
mprintf('the voltage gain under given conditions will be %3.0f',v)
