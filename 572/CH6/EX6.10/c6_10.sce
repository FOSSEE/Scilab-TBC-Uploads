//(6.10)  A rigid, well-insulated tank is filled initially with 5 kg of air at a pressure of 5 bar and a temperature of 500 K. A leak develops, and air slowly escapes until the pressure of the air remaining in the tank is 1 bar. Employing the ideal gas model, determine the amount of mass remaining in the tank and its temperature.


//solution

//variable initialization
m1 = 5                                           //initial mass in kg
P1 = 5                                           //initial pressure in bar
T1 = 500                                         //initial temperature in kelvin
P2 = 1                                           //final pressure in bar

//from table A-22
pr1 = 8.411

pr2 = (P2/P1)*pr1

//using this value of pr2 and interpolation in table A-22
T2 = 317                                         //in kelvin

m2 = (P2/P1)*(T1/T2)*m1
printf('the amount of mass remaining in the tank in kg is :\n \t m2 = %f',m2)
printf('\n and its temperature in kelvin  is : \n\t T = %f',T2)