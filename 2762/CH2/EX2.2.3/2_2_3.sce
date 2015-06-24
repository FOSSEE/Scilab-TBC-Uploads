//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.2-3
//Principles of Momentum Transfer and Overall Balances
//given data
//a) si units
rhow=1000;
g=9.80665;
P=101325;
hw=P/(rhow*g);//water head 
mprintf("a) head= %f m of water 4 deg C",hw)
//b) for Hg
rhom=13595.5;
hm=(rhow/rhom)*hw;
mprintf(" b) head= %f m of Mercury",hm)
