//Example 8.7
m1=0.250;//Mass of object 1 (kg)
m2=0.400;//Mass of object 2 (kg)
v1=2.00;//Initial speed of object 1 (m/s)
v1_final=1.50;//Final speed of object 1 (m/s)
theta1=45;//Angle of emergence (deg)
theta2=atand((v1_final*sind(theta1))/(v1_final*cosd(theta1)-v1));//Direction of velocity of object 2 (deg)
printf('Direction of velocity of object 2 after collision = %0.1f deg\n',theta2)
if theta2<0 
    printf('\t\t\t\t\t\t or %0.1f deg',360+theta2)
end
v2_final=-(m1/m2)*v1_final*(sind(theta1)/sind(theta2));
printf('\nMagnitude of velocity of object 2 after collision = %0.3f m/s',v2_final)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
