//Variable declaration:
syms l                                 //Wavelength (mu.m)
I = 40*exp(-l**2)                       //Intensity of radiation (Btu/h.ft^2.mu.m)

//Calculation:
E = eval(integrate(I, l,0,%inf))                 //Total emissive power (Btu/h.ft^2)

//Result:
printf("The total emissive power is : %.1f Btu/h.ft^2.",E)
