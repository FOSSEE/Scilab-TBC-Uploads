clc
clear

//INPUT DATA 
cp=0.03;//specific heat of lead in kj/kg.k
v=10000;//initial velocity of bullet in cm/sec
J=4.2*10^7;//joules constant in ergs/cal

//CALCULATIONS
//let mass of the bullet in gm
ke=(v^2)/2;//kinetic energy of the bullet per unit mass in (cm/sec)^2
//T is the rise in temperature,then heat produced is m*cp*T
//95% of kinetic energy is converted to heat
T=ke*95/(cp*J*100);//rise in temperature in deg.C

mprintf('the rise in temperature is %3.1f deg.C',T)
