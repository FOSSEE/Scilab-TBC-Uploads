//Example 2.2: 
clc;
clear;
close;
//given data :
mip=15;//in volt
op=6.8;//output potential in volt
pd=mip-op;//potential difference across series resistor
Il=5;//load current in mA
nmip=20;//new maximum input voltage in volt
pd1=nmip-op;//new potential difference across series resistor
Il1=20;//new load current in mA
R=((pd1-pd)/((Il1-Il)*10^-3));//resistance in ohm
format('v',6)
disp(R,"value of series resistance is,(ohm)=")
