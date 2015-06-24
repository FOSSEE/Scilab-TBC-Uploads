//Determining value of Le,Ce and L of Buck Conveter
//Example 5.10(Page No- 214) 
clc
clear
//given data
Vs = 110;//V
Va = 60;//V
Ia = 20;//A
f = 20*10^3;//Hz
del_Vc = 0.025*Va;//peak to peak ripples are 2.5% for load voltages
Rv = Va/Ia;

k = Va/Vs;
Is = k*Ia;
del_Il = 0.05*Ia;//peak to peak ripples are 5% for load current
del_I = 0.1*Ia;//peak to peak ripples are 10% for filter Le current

//part(a)
Le = ((Va*(Vs-Va))/(del_I*f*Vs));
printf('(a)\t Le : %.2f uH',Le*10^6);
Ce = (del_I/(del_Vc*8*f));
printf('\n \t Ce : %.2f uF',Ce*10^6);

//del_Vc = L*(del_Il/k*T)
L = (k*del_Vc)/(del_Il*f);
printf('\n\t Approx value of L: %.2f uH',L*10^6);
