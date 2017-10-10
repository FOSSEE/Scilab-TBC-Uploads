//Example 4.8
m=15;//Mass of traffic light (kg)
g=9.8;//Acceleration due to gravity (m/s^2)
w=m*g;//Weight of traffic light (N)
theta1=30;//Angle for wire 1 (deg)
theta2=45;//Angle for wire 2 (deg)
T1=w/(sind(theta1)+[cosd(theta1)/cosd(theta2)]*sind(45));//Tension in wire 1 (N), Substitute Equation 4.69 in Equation 4.73
//See textbook for derivation
printf('Tension in wire 1 = %0.1f N',T1)
T2=[cosd(theta1)/cosd(theta2)]*T1;//Tension in wire 2 (N), See Equation 4.69
printf('\nTension in wire 2 = %0.1f N',T2)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
