clc
clear

//INPUT DATA
T=80;//temperature of bullet in deg.C
cp=0.03;//specific heat of lead in kj/kg-K
J=4.2;//mechanical equivalent of heat in j/cal

//CALCULATIONS
//90 percent of kinetic energy is converted to heat 
h=T*cp;//heat developed per unit mass in calorie
v=(J*10^7*h*2/0.9)^0.5;//velocity of bullet in cm/sec

//OUTPUT
mprintf('the velocity of bullet is %3.2f cm/sec',v)
