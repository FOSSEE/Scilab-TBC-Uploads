//Chapter 4: Radiation
//Example 4-4.1
clc;

//Variable Initialization
theta = 30              //Angle of radiation (degrees)
epsilon_0 = 8.854e-12   //Permittivity of free space (F/m)
I_dl = 10               //Current in length dl (A-m)
r = 100e3               //Distance of point from origin (m)

//Calculation
E_mag = (I_dl*sin(theta*%pi/180))/(4*%pi*epsilon_0)                        //Magnitude of Electric field vector (V/m)
H_mag = (I_dl*sin(theta*%pi/180))/(4)                        //Magnitude of Magnetic field vector (T)

//Result
disp(E_mag,"The magnitude of E vector in V/m ")
mprintf("\nThe magnitude of H vector is %.3f /pi T", H_mag)
