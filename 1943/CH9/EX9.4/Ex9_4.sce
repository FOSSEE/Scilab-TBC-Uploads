
clc
clear
//Input data
sa1=10;//Cross section of nucleus in barns
N=2200;//Neutrons in m/s
En1=0.1;//Kinetic energy of neutrons increases in eV
En2=0.02525;//Kinetic energy of neutron in eV

//Calculations
sa2=sa1/[(En1/En2)^0.5];//The cross section of neutrons in barns

//Output
printf('The cross section of neutrons = %3.2f barns ',sa2)
