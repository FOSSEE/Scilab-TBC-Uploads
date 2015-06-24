clc
//initialisation of variables
b= 12
angle1= 35 //degrees
angle2= 43 //degrees
//CALCULATIONS
angle3= 180-angle1-angle2
a= sind(angle2)*b/sind(angle3)
c= a*sind(angle1)/sind(angle2)
//RESULTS
printf ('c = %.2f ',c)
printf (' \a=%.2f.',a)
