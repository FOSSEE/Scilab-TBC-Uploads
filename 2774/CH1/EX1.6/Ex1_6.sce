clc
// solution

// initialization of variables
ma=2200 // mass of Automobile 'a' in kg
va=25 //velocity of Automobile 'a' in m/s before collision
va1=13.89 // velocity of Automobile 'a' after collision in m/s
mb=1000 // mass of Automobile 'b' in kg
vb=24.44 //velocity of Automobile 'b' after collision in m/s

KE1=(ma*va**2)/2 // kinetic energy before collision
KE2=(ma*va1**2)/2+(mb*vb**2)/2 // kinetic energy after collision
U=(KE1-KE2)/1000 // internal energy from conservation of energy principle in kJ
printf("The increase in kinetic energy is of %.1f kJ",U)
