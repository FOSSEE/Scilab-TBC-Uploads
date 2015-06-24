//Ex2_1 Pg-87
clc
disp("Conductivity of pure silicon crystal is given by")
disp("   sigma = ni*e*(ue + uh)")
uh=480 //mobility in cm^2/Volt-sec
ue=1350 //mobility of electrons in cm^2/Volt-sec
e=1.6*10^(-19) //electron charge
ni=1.072*10^10 //density of electron hole
sigma_i=ni*e*(uh+ue) //conductivity of silicon
printf("\n Conductivity of pure silicon crystal = %.8f ohm^(-1)/cm \n",sigma_i)
disp("Resistivity of silicon is given by")
rho=1/sigma_i //resistivity of silicon
printf("\n Resistivity of pure silicon crystal = %.0f ohm-cm \n",rho)
