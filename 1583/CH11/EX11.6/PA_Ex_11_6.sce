clc
//Chapter 11:Power amplifiers
//example 11.6 page no 479
//given
Po=20//power delivered in watt
Rl=50//load resistance
Vcc=sqrt(%pi^2*Rl*Po/8)//suppy volatage
Idc=4*Vcc/(Rl*%pi^2)//direct current in each transistor
mprintf('the suppy volatage is %f V \n the direct current in each transistor is %f A',Vcc,Idc)
disp('the maximum voltage drop across each transistor will be 2Vcc,or 70.2V the load circuit would be tuned to resonant at the fundamental frequency of the input signal')

