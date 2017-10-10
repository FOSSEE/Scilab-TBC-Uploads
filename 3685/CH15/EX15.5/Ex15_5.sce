clc
W1 = 0.0058 // Humidity ratio for first stream
W2 = 0.0187  // Humidity ratio for second stream
h1 = 35 // Enthalpy of first stream in kJ/kg
h2 = 90// Enthalpy of second stream in kJ/kg
G12 = 1/2 //ratio
W3 = (W2+G12*W1)/(1+G12) // Final humidity ratio of mixture
h3 = (2/3)*h2 + (1/3)*h1// Final enthalpy of mixture

printf("\n Example 15.5 \n")
printf("\n Final condition of air is given by")
printf("\n W3 = %f kg vap./kg dry air",W3)
printf("\n h3 =  %f kJ/kg dry air",h3)
//The answers vary due to round off error

