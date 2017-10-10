//Example 13.12
T=20;//Temperature (C)
T=T+273;//Temperature (K)
P=2.33*10^3;//Vapor pressure of water at 20 deg C (Pa), See Table 13.5
R=8.31;//Ideal gas constant (J/mol.K)
M=18;//Molecular mass of water (g/mol)
//From ideal gas law, n/V=rho=P/(RT)
//n=number of moles, V=volume (m^3), rho=density (mol/m^3)
rho=P/(R*T);//Density (mol/m^3)
rho=rho*M;//Density (g/m^3)
printf('Density of water vapor = %0.1f g/m^3',rho)
sat_rho=17.2;//Saturation vapor density, See Table 13.5 (g/m^3)
//Here it is found that rho=sat_rho
x=abs(rho-sat_rho);//Difference (g/m^3)
if (x<0.1)//For a maximum difference of less than 0.1 g/m^3 (assumed)
     printf('\nDensity of water vapor calculated is equal to the saturation vapor density found in Table 13.5')
    end
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
