//Quantised energy levels for microscopic and macroscopic systems
clc();
clear;
//Given :
// (a) For a 1s simple pendulum :
T = 1; // time period in s
nu = 1/T; //Frequency in Hz
//Planck's quantisation princple : E_n = n*h*nu
h = 6.625*10^-34 ; //Planck's constant in Js
printf("Energy at First three levels for a 1s simple pendulum :\n\n");
for n1 = 1:3
    E1 = n1*h*nu ; // Energry  in J
    printf("E_%d : %1.3f x 10^-34 J\n",n1,E1*10^34);
end
// (b) For a hydrogen electron 
// E_n = (-13.6/n^2)eV
 printf("Energy at First three levels  for a hydrogen electron :\n\n");
for n2 = 1:3
    E2 = (-13.6/n2^2);//Energy in eV
    printf("E_%d : %.2f J\n",n2,E2);
end

//Now, for a simple pendulum
m = 10; // mass in g
a = 1; // amplitude in cm
omega = 2*%pi*nu; // angular frequency in rad/s
// 1 g = 1.0*10^-3 Kg and  1 cm = 1.0*10^-2 m
E = 1/2*((m*10^-3)*(omega^2)*(a*10^-2)^2); // Energy in J
//Thus,quantum number n = E/h*nu
n = E/(h*nu);
printf("Quantum number n is : %.2f x 10^28 \n\n",n*10^-28);
//(i)Pendulum :
//percentage change in energy  = (E_n+1 - E_n)*100/E_n  which is equal to [(n+1)*h*nu - n*h*nu]*100/(n*h*nu )
//Therefore , it is (1/n) * 100
pc = (1/n)*100; //percentage change in energy
printf("Percentage change in energy ( pendulum ) is %1.3f x 10^-27 \n\n",pc*10^27);
//(ii)Hyderogen electron :
n_1 = 1; //ground state
n_2 = 2; // next quantum state
E_1 = (-13.6/n_1^2); // Energy in eV
E_2 = (-13.6/n_2^2);//Energy in eV
//percentage change : |((E_2-E_1)*100)|/ |E_1|
pc1 =((E_2-E_1)*100)/(-E_1);//percentage change
printf("Percentage change in energy (hydrogen electron) is  %.1f",abs(pc1));
