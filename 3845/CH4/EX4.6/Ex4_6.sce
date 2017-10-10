//Example 4.6
m=70;//Mass of the tightrope walker (kg)
theta=5;//Angle (deg)
g=9.8;//Acceleration due to gravity (m/s^2)
w=m*g;//Weight of the tightrope walker (N)
T=w/(2*sind(theta));//Tension (N), See Equation 4.52
//See textbook for derivation
printf('Tension in the wire = %0.1f N',T)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
