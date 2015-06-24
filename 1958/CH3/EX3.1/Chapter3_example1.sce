clc
clear
//Input data
m=0.04//Mass of stone in kg
vi=25//Initial velocity in m/s
vf=0//Final velocity in m/s
yi=0//Initial height in m

//Calculations
Ui=(m*9.81*yi)//Initial potential energy in J
Ki=(1/2)*m*vi^2//Initial kinetic energy in J
Etotal=(Ui+Ki)//Total energy in J
h=(Etotal/(m*9.8))//Maximum height in m
//when the stone is at (2/3)h, total energy is again same
v=sqrt((Etotal-(m*9.8*(2/3)*h))/((1/2)*m))//Velocity at (2/3) of its maximum height in m/s

//Output
printf('Maximum height it will reach is %3.1f m \n Potential energy at that height is %3.1f J \n velocity when it is at the two-third of its maximum height is %3.2f m/s',h,Etotal,v)
