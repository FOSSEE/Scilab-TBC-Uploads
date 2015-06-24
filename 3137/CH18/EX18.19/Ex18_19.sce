//Initilization of variables
Ws=250 //lb
Wl=500 //lb
W3=161 //lb
W4=64.4 //lb
wo=100 //rpm
wf=300 //rpm
rl=3 //ft
rs=2 //ft
g=32.2 //ft/s^2
//Calculations
//Moment Of Inertia
I=(0.5*(Wl/g)*rl^2+0.5*(Ws/g)*rs^2) //slug-ft^2
//Change in angular Momentum
change1=I*((wf-wo)*2*(%pi/60)) //lb-s-ft
//Change in angular momentum about G for 161lb
change2=2*((W3/g)*(wf-wo)*(4/60)*%pi) //lb-s-ft
//Similarly change in 64lb is
change3=3*((W4/g)*(wf-wo)*(6/60)*%pi) //lb-s-ft
//Change in linear impulse
//Without t term in it
m1=2*W3
m2=-3*W4
//Total angular impulse
t=(change1+change2+change3)/(m1+m2) //s
//Result
clc
printf('The time required is %f s',t)
