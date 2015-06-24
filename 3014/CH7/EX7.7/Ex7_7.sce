 
clc 
//Given that
k = 12 // relative Dielectric constant of sea water
epsilon_0 = 1/9e9 // Permittivity of free space
sigma = 2 // conductivity in mho/cm
mu_0 = 4*%pi*1e-7 // permeability f free space
f= 1e9 // Given frequency in Hz
F = 1e6 // Given frequency in Hz
printf("\nExample 7.7")
delta = sqrt(2/(2*%pi*F*mu_0*sigma*100)) // Calculation of frequency
printf("\n For %eHz frequency, Penetration depth is %f cm",F,delta*100)
omega = 2*%pi*f
x = 2*sigma*100/(k*epsilon_0*omega)
if x>1 then
    printf("\n Silicon is good conductor at frequency lesser than 1e9 Hz \n\n\n")
end
// Answer in book is 3.6 cm
