//(3.11)  Air undergoes a polytropic compression in a piston–cylinder assembly from p1 = 1 bar, T1 = 22C to p2 = 5 bars. Employing the ideal gas model, determine the work and heat transfer per unit mass, in kJ/kg, if n = 1.3.

//solution

//variable initialization
p1 = 1                               //initial pressure in bar
T1 = 295                             //initial temperature in kelvin 
p2 = 5                               //final pressure in bar
n=1.3                                //polytropic constant
R = 8314/28.97                              // gas constant for air in SI units

T2 = T1*(p2/p1)^((n-1)/n)
w = R*(T2-T1)/(1-n)
printf('the work done per unit mass in KJ/Kg is :\n\tW = %f',w/1000)

//from table A-22
u2 = 306.53
u1 = 210.49
Q = u2-u1+w/1000

printf('\n\nthe heat transfer per unit mass in KJ/Kg is:\n\t Q = %f',Q)
