clc
clear

//input
r=24;//resistance of each of three resistors connected in star in ohms
v=415;//3 phase supply in volts

//calculations
vp=v/(3^0.5);//phase voltage in volts
ip=vp/r;//phase current in amperes
il=ip;//for star connection

//output
mprintf('the phase voltage is %3.0f V and the current in each line is %3.0f A',vp,il)
