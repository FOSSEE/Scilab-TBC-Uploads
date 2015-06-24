clc
clear

//INPUT DATA 
cp=0.1;//specific heat of copper in kj/kg-K
w=120;//weight of copper calorimeter in gm
a=1400;//weight of paraffin oil in gm
cp1=0.6;//specific of parafin oil in kj/kg-K
b=10^8;//force to rotate the paddle in dynes
T=16;//rise in temperature in deg.C
n=900;//no.of revolutions stirred 
pi=3.14;//value of pi

//CALCULATIONS
c=2*pi*b;//work done by a rotating paddle per rotation in dyne cm per rotation
d=c*n;//total work done in dyne cm 
hc=w*cp*16;//heat gained by calorimeter in calories
hp=a*cp1*16;//heat gaained by paraffin oil in calories 
J=d/(hc+hp);//mecanical equivalent of heat in erg/cal

//OUTPUT
mprintf('mecanical equivalent of heat is %3.0f erg/cal',J)
