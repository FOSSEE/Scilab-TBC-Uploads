//Problem 10.19: The current flowing through a resistor of 5 kohm(+-)0.4% is measured as 2.5 mA with an accuracy of measurement of (+-)0.5%. Determine the nominal value of the voltage across the resistor and its accuracy.

//initializing the variables:
I = 0.0025; // in Amperes
R = 5000; // in ohms
e1 = 0.4; // in %
e2 = 0.5; // in %

//calculation:
V = I*R
em = e1 + e2
Ve = em*V/100

printf("\n\n Result \n\n") 
printf("\n voltage V = %.1fV(+-)%.2fV\n",V,Ve)