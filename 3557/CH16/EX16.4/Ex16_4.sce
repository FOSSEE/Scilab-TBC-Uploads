//Example 16.4//

n=1.458;//Average refractive index Silica Glass (SiO2)
Rs=(((n-1)/(n+1))^2)//Fresnel's formula
mprintf("Rs = %f ",Rs)
mprintf("(Instead of equal to sign it is given addition  sign in the texbook)")
//For PbO
n1=2.60;//refractive index of PbO
Rp=((n1-1)/(n1+1))^2//Fresnel's formula
mprintf("\nRp = %f",Rp)
R=Rp/Rs
mprintf("\nR = %f",R)
