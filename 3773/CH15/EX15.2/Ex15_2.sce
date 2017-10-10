//Chapter 15: Antennas for Special Applications
//Example 15-4.1
clc;

//Variable Initialization
eps_r1 = 16    //Real part of relative permittivity of ground (unitless)
sigma = 1e-2    //conductivity of ground (mho per meter)
eps_0 = 8.85e-12    //Air permittivity (F/m)
f1 = 1e6       //Frequency (Hz)
f2 = 100e6     //Frequency (Hz)

//Calculation
eps_r11 = sigma/(2*%pi*f1*eps_0)    //Loss part of relative permittivity for f1 (unitless)
eps_r11_2 = sigma/(2*%pi*f2*eps_0)    //Loss part of relative permittivity for f2 (unitless)

eps_ra = eps_r1 -(%i)*eps_r11    //Relative permittivity for f1 (unitless)
eps_rb = eps_r1 -(%i)*eps_r11_2    //Relative permittivity for f2 (unitless)

n1 = sqrt(eps_ra)    //Refractive index for f1 (unitless)
n2 = sqrt(eps_rb)    //Refractive index for f2 (unitless)

E_perp1t=[]
E_perp2t=[]

for i=0:%pi/180:%pi/2
E_perp1 = [1 + (abs((sin(i) - n1)/(sin(i)+n1))*exp(%i*(2*%pi*sin(i) + ((sin(i) - n1)/(sin(i)+n1)))))]    
E_perp2 = [1 + (abs((sin(i) - n2)/(sin(i)+n2))*exp(%i*(2*%pi*sin(i) + ((sin(i) - n2)/(sin(i)+n2)))))]
E_perp1t($+1)=E_perp1
E_perp2t($+1)=E_perp2
end

E_perp1_rel = E_perp1/(E_perp1t)    //Relative electric field for f1 (unitless)

E_perp2_rel = E_perp2/(E_perp2t)    //Relative electric field for f2 (unitless)


//Result
mprintf("The loss parameter for 1MHz is %.0f", eps_r11)
mprintf("\nThe loss parameter for 100MHz is %.1f", eps_r11_2)
mprintf("\nThe relative permittivity for 1MHz is (%d%.0fj)", eps_ra,imag(eps_ra))
mprintf("\nThe relative permittivity for 100MHz is (%d%.1fj)", eps_rb,imag(eps_rb))
