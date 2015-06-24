//Zo of the coaxial cable
//given
clc
epsilon_r=2.25
Dbyd=2.25
Zo=(138/sqrt(epsilon_r))*log10(Dbyd)//ohm
Zo=round(Zo*1000)/1000///rounding off decimals
disp(Zo,'the Zo for the given coaxial cable is :')//ohm
