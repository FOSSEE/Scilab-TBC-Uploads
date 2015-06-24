
clc 
//Given that
alpha_300 = 2.5e-39 // total polarisability in C^2m/N at 300 K
alpha_600 = 1.75e-39 // total polarisability in C^2m/N at 600 K
T1 = 300 // Initial temperature in Kelvin
T2 = 600 // Final Temperature in Kelvin
printf("Example 4.12\n")
b = (alpha_300-alpha_600)*T2
al_def_300 = alpha_300 - b/300
al_oriant_300 = b/300
al_oriant_600 = b/600
printf("\n Deformational Polarizability is %e C^2mN^-1",al_def_300)
printf("\n Orientational Polarizability at %d degree Celcius is %e C^2mN^-1",T1,al_oriant_300)
printf("\n Orientational Polarizability at %d degree Celcius is %e C^2mN^-1",T2,al_oriant_600)
