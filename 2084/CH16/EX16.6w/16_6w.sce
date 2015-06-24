//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.6w
//calculation of the speed of sound wave in hydrogen

//given data
gama=1.4//value of constant gama for hydrogen
voxygen=470//speed(in m/s) of the sound wave in oxygen

//calculation
//speed of sound wave in a gas is ........v = sqrt(gama*P/rho)
//at STP ,density of oxygen is 16 times density of hydrogen
vhydrogen=voxygen*sqrt(16)//speed of sound in hydrogen

printf('the speed of sound wave in hydrogen is %d m/s',vhydrogen)
