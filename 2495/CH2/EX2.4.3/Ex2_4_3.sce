clear
clc
m1=100;//amount of water in gm
M1=18;//in gm
m2=1;//amount of urea in gm
M2=60;//in gm
m3=2;//amount of sucrose in gm
M3=342;//in gm
X=(m1/M1)/((m1/M1)+(m2/M2)+(m3/M3));//mole fraction of solvent
P2=23.756;//in torr
T=298;//in K
P1=P2*X;//vapour pressure of solution intorr
printf('P1=%.2f torr',P1)

//There are some errors in the solution given in textbook
//page 39

