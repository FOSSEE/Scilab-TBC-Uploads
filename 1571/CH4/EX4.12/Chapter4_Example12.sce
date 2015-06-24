clc
clear

//INPUT
cp=6.84;//specific heat at constant pressure in cal/gm mole/deg.C
r=8.31*10^7;//universal gas constant in ergs/gm mole/deg.C
v=130000;//velocity of sound in cm/sec
j=4.2*10^7;//joules constant in ergs/cal

//CALCULATION
cv=cp-(r/j);//specific heat at constant volume in gm-mole/deg.C
y=(cp/cv);//index of co-efficient
v1=(3/y)^(0.5)*v;//rms velocity in cm/sec

//OUTPUT
mprintf('the rms velocity of gas molecule is %3fcm/sec',v1)
