clc
clear

//INPUT DATA 
R=64*10^7;//mean radius of the earth in cm
cp=0.15;//specific heat of earth in kj/kg-K
J=4.2*10^7;//joules constant in erg/cal

//CALCULATIONS
i=2/5*R^2;//moment of inertia of the earth per unit mass in joules
w=(2*3.14)/(24*60*60);//angular velocity of the earth in rad/sec
T=(i*w^2)/(2*J*cp);//rise in temperature in deg.C

//OUTPUT
mprintf('the rise in the temperature is %3.1f deg,C',T)
