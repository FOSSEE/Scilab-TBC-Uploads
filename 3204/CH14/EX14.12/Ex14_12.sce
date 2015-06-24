// Calculations
// From eq'n 2 it is clear that velocity of the particle becomes zero at t=3 sec
t=3 // sec .. from eq'n 2
// Position of particle at t=3 sec
x=(t^3)-(3*t^2)-(9*t)+12 // m // from eq'n 1
// Acc of particle at t=3 sec
a=6*(t-1) // m/s^2 // from eq'n 3
// Results
clc
printf('The time at which the velocity of the particle becomes zero is %f sec \n',t)
printf('The position of the partice at t=3 sec is %f m \n',x)
printf('The acceleration of the particle is %f m/s^2 \n',a)
// Ref textbook for the  graphs
