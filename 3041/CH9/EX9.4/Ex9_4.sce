//Variable declaration
C=0.4*10**-12               //capacitance(pF/um^2)
A=10**-12                   //area of film(m^2)
d=400*10**-10               //thickness of SiO2(amstrong)
Eo=8.849*10**-12            //absolute electrical permitivity of free space

//Calculations
Er=(C*d)/(Eo*A)             //relative dielectric constant

//Results
printf ("relative dielectric constant of SiO2 is %.f",Er)
printf(" Note : Solution given in the textbook is incorrect")
