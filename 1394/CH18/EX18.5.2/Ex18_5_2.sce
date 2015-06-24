
clc
// Initialization of variables
D = 2*10^-5 // cm^2/sec
l = 32*10^-4 // cm
c = 6.8*10^-6 // mol/cc
C10 = 10^-4 // mol/cc
function[j] = Totalflux(H,K)
    j = (D*H*C10/l)+((D*H*K*c*C10)/(l*(1+(H*K*C10))))
endfunction
//For Lithium Chloride
H1 = 4.5*10^-4 //Partition coefficient 
K1 = 2.6*10^5 // cc/mol association constant
j1 = (Totalflux(H1,K1))*10^10 // TOtal flux in x*10^-10 mol/cm^2-sec
printf("The total flux for Lithium Chloride is %.1f x10^-10 mol/cm^2-sec",j1)
 //For Sodium Chloride
H2 = 3.4*10^-4 //Partition coefficient 
K2 = 1.3*10^7 // cc/mol association constant
j2 = (Totalflux(H2,K2))*10^10 // TOtal flux in x*10^-10 mol/cm^2-sec
printf("\nThe total flux for Sodium Chloride is %.1f x10^-10 mol/cm^2-sec",j2)
 //For potassium Chloride
H3 = 3.8*10^-4 //Partition coefficient 
K3 = 4.7*10^9 // cc/mol association constant
j3 = (Totalflux(H3,K3))*10^10 // TOtal flux in x*10^-10 mol/cm^2-sec
printf("\nThe total flux for Potassium Chloride is %.1f x10^-10 mol/cm^2-sec",j3)
