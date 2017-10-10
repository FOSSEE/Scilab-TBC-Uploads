clc;
clear;
RL=3 //load resistor in ohm
hie=1*10^3 //in ohm
hre=2*10^-4 //in mho
hfe=25 //in mho
hoe=15*10^-6 //in mho

//Calculation
gm=hfe/hie 
Ave=-gm*RL*10^3

mprintf("Transconductannce= %0.3f mho\n",gm)
mprintf("Voltage gain= %0.2i",Ave)
