
clc
// given that
sigma=3.8*10^7  // Electrical Conductivity in (Ohm-m)^-1  
m_e=0.0012  // Mobility of electron in m^2/V-s 
I_x=25  // Current in Ampere(A)
d=15*10^-3 //Thickness in m 
B_z=0.6  // Magnetic field in Tesla 
printf("Example 17.4\n")
Rh=-m_e/sigma  //Hall coefficient
printf("\n Hall coefficient is %.2e V-m/A-Tesla\n",Rh)
Vh=Rh*I_x*B_z/d
printf("\n Hall Voltage is %.2e V\n",Vh)


