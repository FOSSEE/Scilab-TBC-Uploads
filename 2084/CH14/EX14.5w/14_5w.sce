//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.5w
//calculation of the decrease in the volume of the sample of water

//given data
V1=1000*10^-6//initial volume(in m^3)
P1=10^5//initial pressure(in N/m^2)
P2=10^6//final pressure(in N/m^2)
C=50*10^-11//compressibility(in m^2/N)of the water

//calculation
deltap=P2-P1//change in pressure
//compressibility = 1/Bulk modulus = -(deltaV/V)/deltaP
deltaV=-(C*deltap*V1)

printf('the decrease in the volume of the sample of water is %3.2f cm^3',-deltaV*10^6)
