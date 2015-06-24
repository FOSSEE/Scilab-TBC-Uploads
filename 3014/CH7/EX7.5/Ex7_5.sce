 
clc 
//Given that
k = 80 // relative Dielectric constant of sea water
epsilon_0 = 1/9e9 // Permittivity of free space
epsilon = 80*epsilon_0 // Permittivity of free space
sigma = 4.3 // conductivity in mho/m
delta = 10 // penetration depth in cm
mu_0 = 4*%pi*1e-7 // permeability f free space
F = 1e8 // Given frequency in Hz
printf("Example 7.5")
f = (1/(%pi*mu_0*sigma))/(delta*1e-2)^2 // Calculation of frequency
f1= ceil(f/1e8)*1e8 // Rounding off
printf("\nFrequency required for penetration of depth %d cm is %e Hz",delta,f1)
omega = 2*%pi*F
x = 2*sigma/(epsilon*omega)
if x>1 then
    printf("\n Sea water is good conductor at frequency lesser than 1e8 Hz\n\n ")
end
