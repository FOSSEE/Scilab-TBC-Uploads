clc
//Chapter3: Modulation
//Example3.26, page no 176
//Given
mp=0.1//Modulating index
fm=400//Modulating signal freq
deltaF=mp*fm//Max freq deviation
//disp(deltaF)
ReqDev=50e3// Required deviation
MF=ReqDev/deltaF// multiplication factor
mprintf('Required Deviation is: %d kHz\n',ReqDev/1e3)
mprintf('Required Multipication Factor is: 5*5*5*5*2')

