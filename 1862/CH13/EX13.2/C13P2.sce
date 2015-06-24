
clear
 clc
 //to find gain in internal energy
//to find speed of block


// GIVEN:
//mass of block
m = 4.5//in Kg
//angle of inclination
theta = 30//in degrees
//initial speed
v = 5.0//in m/s
//distance travelled
d = 1.5//in meters
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//applying conservation of energy principle
//consider block+plane+earth as our system
//final potential energy
Uf = m*g*(d*sind(theta))//in J
//initial potential energy
Ui = 0//in J
//change in potential energy
delta_U = Uf-Ui//in J
//final kinetic energy
Kf = 0//in J
//initial kinetic energy
Ki =(1/2)*m*v^2//in J
//change in kinetic energy
delta_K = Kf-Ki//in J
//change in mechanical energy in system
delta_U_plus_delta_K = delta_U+delta_K//in J
//applying conservation of energy principle
//gain in internal energu
delta_E_int = -(delta_U_plus_delta_K)//in J
//final kinetic energy for downhill journy
//here delta_K = 2*delta_E_int as round tripi.e.uphill and downhill motion
KF = (-(2*delta_E_int))+(-delta_K)//in J
//speed of block
vf = sqrt(2*KF/m)//in m/s 
KF = round(KF)

printf ("\n\n Change in potential energy delta_U  = \n\n %2i J",delta_U)
printf ("\n\n Change in kinetic energy delta_K  = \n\n %2i J",delta_K)
printf ("\n\n Change in mechanical energy in system delta_U_plus_delta_K   = \n\n %2i J",delta_U_plus_delta_K)
printf ("\n\n Gain in internal energy delta_E_int  = \n\n %2i J",delta_E_int)
printf ("\n\n Final kinetic energy for downhill journy KF  = \n\n %2i J",KF)
printf ("\n\n Speed of block vf = \n\n %.1f m/s",vf)
