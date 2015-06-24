//CHAPTER 6 ILLUSRTATION 6 PAGE NO 179
//TITLE:Turning Moment Diagram and Flywheel
clc
clear
pi=3.141
PI=180//in degrees
theta1=0
theta2=PI
m=400//      mass of the flywheel in kg
N=250//      speed in rpm
k=.4//       radius of gyration in m
n=2*250/60000//          no of working strokes per minute
W=1000*pi-150*cosd(2*theta2)-250*sind(2*theta2)-(1000*theta1-150*cosd(2*theta1)-250*sind(2*theta1))//     workdone per stroke in Nm
P=W*n//        power in KW
Tmean=W/pi//         mean torque in Nm
twotheta=atand(500/300)//       angle at which T-Tmean becomes zero
THETA1=twotheta/2
THETA2=(180+twotheta)/2
E=-150*cosd(2*THETA2)-250*sind(2*THETA2)-(-150*cosd(2*THETA1)-250*sind(2*THETA1))//    FLUCTUATION OF ENERGY IN Nm
w=2*pi*N/60//      angular speed in rad/s
Cs1=E*100/(k^2*w^2*m)//   fluctuation range
Cs=Cs1/2//         tatal percentage of fluctuation of speed
Theta=60
T1=300*sind(2*Theta)-500*cosd(2*Theta)//        Accelerating torque in Nm(T-Tmean)
alpha=T1/(m*k^2)//                              angular acceleration in rad/s^2
printf('Power delivered=%.3f kw\nTotal percentage of fluctuation speed= %.3f\nAngular acceleration= %.3f rad/s^2',P,Cs,alpha)
