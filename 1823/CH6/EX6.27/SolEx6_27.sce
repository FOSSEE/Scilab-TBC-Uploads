//Find (a) the overall voltage-gain ratio
//Av ¼ vL=vS and (b) the overall current-gain ratio Ai ¼ iL=iS.
//Example 6.27 page no 194
clear
clc
hfb1=-0.99
hfc2=-100
Rb=33.3*10^3
Re1=5*10^3
Re2=2*10^3
Rl=2*10^3
hic2=500
hib1=50
hic2=500
Av1=-((hfb1*Rb*hic2)/(hib1*(Rb+hic2)))
Av2=0.995
Av=Av1*Av2
printf("\n The value of Av1=%0.3f " ,Av1)
printf("\n The value of Av1=%0.3f " ,Av)
Ai1=-((hfb1*Re1*Rb)/((Re1+hib1)*(Rb+hic2)))
printf("\n The value of Ai1=%0.3f " ,Ai1)
Ai2=-((hfc2*Re2)/(Re2+Rl))
printf("\n The value of Ai2=%0.3f " ,Ai2)
Ai=Ai1*Ai2
printf("\n The value of Ai=%0.3f " ,Ai)
