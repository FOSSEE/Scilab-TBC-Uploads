//Ex2_6
clc
Vi=10
disp("input voltage,Vi = "+string(Vi)+" volts") //initialization
Vim=Vi*sqrt(2)
f1=50
disp("frequency,f1="+string(f1)+" hertz")  //initialization
RL=1100
disp("resistance,RL = "+string(RL)+ " ohm")  //initialization
C=50*10^(-6)
r=1/[(4*sqrt(3))*f1*RL*C] // Formulae
disp("Ripple factor,r = "+string(r)+"")
x=1/(4*f1*RL*C) // Formulae
VLDC=Vim/(1+x) // Formulae
disp("output voltage,VLDC = VLDC=Vim/(1+x)="+string(VLDC)+" volts") //calculation
VR=(Vim-VLDC)/(VLDC) // Formulae
disp(" voltage Regulation,VR =(Vim-VLDC)/(VLDC)= "+string(VR)+" volts")  //calculation
Vr=VLDC*r // Formulae
disp("Ripple output voltage,Vr = Vr=VLDC*r="+string(Vr)+" volts")//calculation
