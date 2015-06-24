clc
clear

//INPUT DATA 
h=150;//height froom which ball fallen in ft
cp=0.03;//specific heat of lead in kj/kg-K
J=778;//mechanical equivalent of heat in ft lb/B.Th.U

//CALCULATIONS
//assume m be the mass of the lead
//work done in falling through 160 feet in ft-lb w=160*m
//heat absorbed by the ball in B.Th.U h=m*cp*T
//work done in falling is equal to heat absorbed by the ball
T=160/(J*cp)*(5/9);//the raise in temperature in T

//OUTPUT
mprintf('the raise in temperature is %3.1f deg.C',T)
