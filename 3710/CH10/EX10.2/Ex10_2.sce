//Example 10.2, Page Number 498
//Sensitivity Calculation
clc;
a=5*(10**-7) //Thermal expansion Coefficient per Kelvin
b=6.8*(10**-6) //Thermal Expansion Coefficient per Kelvin
l=1.55*(10**-6) //Wavelength in meter
p11=0.126  //Constant Coeffiecient
p12=0.274  //Constant Coeffiecient
u=0.17  
n=1.46//cladding refractive index

dl=l*(a+b); // dl is the wavelength sensitivity to temp. changes
disp(dl,"The Wavelength Sensitivity to temperature changes of the filter structure in nm/K is:");

pe=((n**2)/2)*(((1-u)*p12)-(u*p11));  //pe is the effective photoelastic coefficient
disp(pe," The Effective Photoelastic Coefficient is:");

dl=l*(1-pe) 
disp(dl," As far as Strain is concerned the Sensitivity in m/ε is:");
