//Chapter-6,Example 6_12,Page 6-31
clc()

//Given Values:
M=40             //Mass of an iron core
D=7.5*10^3       //Density of iron
f=100            //Frequency
A=3800*10^-1     //Loss due to Area of hysterisis loop in J/m^3

//Calculations:
V=M/D           //Volume of iron core
L1=A*V          //Loss of energy in core per cycle
printf('Loss of energy in core per cycles is =%.2f Joules \n \n',L1)

N=f*60          //Number of cycles per minute
L=L1*N          //Loss of energy per minute

printf(' Loss of energy per minute is =%.1f Joules \n',L)
