
clc
//Initialization of variables
sigma1 = 2.92 // angstroms
sigma2 = 3.68 // angstroms
sigma12 = (sigma1+sigma2)/2 // angstroms
T = 294 // Kelvin
M1 = 2.02 // Mol wt of hydrogen
V1 = 7.07 
V2 = 17.9
M2 = 28 // Mol wt of Nitrogen
p = 2 //atm
Omega = 0.842
Dexp = 0.38 // cm^2/sec
//calculations
D1 = ((1.86*10^-3)*((T)^1.5)*(((1/M1)+(1/M2))^0.5))/((p)*((sigma12)^2)*Omega)//cm^2/sec
err1 = ((Dexp-D1)/Dexp)*100
D2 = ((10^-3)*((T)^1.75)*(((1/M1)+(1/M2))^0.5))/((p)*((((V1)^(1/3))+ ((V2)^(1/3)))^2))  //cm^2/sec
err2 = ((Dexp-D2)/Dexp)*100
//Results
printf("The diffusion co efficient using Chapman-enskong theory is %.2f cm^2/sec",D1)
printf("\nThe error for the above correlation is %.f percent",err1)
printf("\nThe diffusion co efficient using Fuller correlation is %.2f cm^2/sec",D2)
printf("\nThe error for the above correlation is %.f percent",err2)
