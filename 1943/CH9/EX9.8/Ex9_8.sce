
clc
clear
//Input data
Eni=4.8;//The energy of the newly born electron in MeV
Enf=0.025;//The energy of the electron after slow down in eV
A=12;//The mass number of the graphite (carbon)

//Calculations
L=1-[[(A-1)^2/(2*A)]*log((A+1)/(A-1))];//The logarithmic energy decrement
n=(log(Eni*10^6/Enf))/L;//The number of collisions required to slowdown the neutron 

//Output
printf('The logarithmic energy decrement representing the neutron energy loss per elastic collision = %3.3f \n The number of collisions necessary = %3.0f ',L,n)
