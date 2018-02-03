clear
//

//variable declaration

//A cable car used for carrying materials in a hydroelectric project is at rest on a track formed at an angle of 30° with the vertical. The gross weight of the car and its load is 60 kN and its centroid is at a point 800 mm from the track half way between the axles. The car is held by a cable .  The axles of the car are at a distance 1.2 m. Find the tension in the cables and reaction at each of the axles neglecting friction of the track.

W=60.0       //gross weight  of car,KN
theta=60.0*%pi/180.0
  
 
T=W*sin(theta)
printf("\n T= %0.4f  KN",T)

//Taking moment equilibrium condition about upper axle point on track, we get

R1=(-T*600.0+W*sin(theta)*800.0+W*cos(theta)*600.0)/1200.0
printf("\n R1= %0.4f  KN",R1)

//Sum of forces normal to the plane = 0, gives 
R2=W*cos(theta)-R1
printf("\n R2= %0.4f  KN",R2)
