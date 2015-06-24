//Variable declaration
C=250*10**-12               //capacitance(pF)
d=500*10**-10               //thickness of SiO2 layer(amstrong)
Eo=8.849*10**-12            //absolute electrical permitivity of free space
Er=3.5                      //relative dielectric constant

//Calculations
A=(C*d)/(Eo*Er)            //chip area(um^2)

//Results
printf ("chip area needed for a 250 pF  MOS capacitor %.2f um^2",A/1e-7)
printf("Note: Solution given in the textbook is incorrect")
