//Problem 6.05: The flux density between two plates separated by mica of relative permittivity 5 is 2 μC/m2. Find the voltage gradient between the plates.

//initializing the variables:
D = 2E-6; // in μC/m2
e0 = 8.85E-12; // in F/m
er = 5;

//calculation:
E = D/(e0*er)

printf("\n\nResult\n\n")
printf("\n Electric field strength E %.2E V/m\n",E)