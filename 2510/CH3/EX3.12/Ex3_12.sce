//Variable declaration:
//For the problem at hand, take as a basis 1 kilogram of water and assume the potential energy to be zero at ground level conditions.
z1 = 0                      //Intial height from ground level (m)
z2 = 10                     //Final height from ground level (m)
PE1 = 0                     //Initial potential energy at z1 (J)
m = 1                       //Mass of water (kg)
g = 9.8                     //Gravitational acceleration (m/s^2)
gc = 1                      //Conversion factor
 
//Calculations:
PE2 = m*(g/gc)*z2           //Final potential energy at z2 (J)
 
//Result:
disp("The potential energy of water is :")
disp(PE2)
disp("J ")
