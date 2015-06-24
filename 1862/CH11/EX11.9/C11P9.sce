
clear
 clc
//to find speed of crate according to observer o
////to find work and change in kinetic energy

// GIVEN:
//refer to figure 11-18(a),(b)from page no. 242
//force applied
Fx = 5.63//in N
//mass of crate
m = 12.0//in kg
//speed of train
vx = 15.0//in m/s
//distance travelled by crate
s = 2.4//in meters 

// SOLUTION:
//using work-energy principle
//work done
W = Fx*s//in J
//initial kinetic energy according to observer in car
Ki = 0
////final kinetic energy according to observer in car
Kf = W -Ki
//speed of crate according to observer o
vf = sqrt(2*Kf/m)//in m/s
//applying impulse-momentum theorem
//time interval
delta_t = (m*vf/Fx)//in seconds
//forward distance travelled
d = vx*delta_t//in meters
//total distance moved by crate
s_dash = d+s//in meters
//work done
W_dash = Fx*s_dash//in J
//final speed of crate
vf_dash = vx+vf//in m/s
//change in kinetic energy
deltaK_dash = (1/2*m*(vf_dash^2))-(1/2*m*(vx^2))
W_dash = round(W_dash)
deltaK_dash = round(deltaK_dash)
printf ("\n\n Final kinetic energy according to observer in car Kf = \n\n %.1f J",Kf);
printf ("\n\n Speed of crate according to observer o vf = \n\n %.2f m/s",vf);
printf ("\n\n Time interval delta_t = \n\n %.2f seconds",delta_t);
printf ("\n\n Work done W_dash = \n\n %3i J",W_dash);
printf ("\n\n Change in kinetic energy deltaK_dash = \n\n %3i J",deltaK_dash);
printf ("\n\n As W_dash = deltaK_dash work-energy principle is valid")
