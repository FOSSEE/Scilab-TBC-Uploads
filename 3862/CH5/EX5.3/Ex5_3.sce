clear
//
W=500.0    //weight of block
F1=200.0     //force up the inclined plane when block is moving down
F2=300.0     //force up the inclined plane when block is at rest
//When block starts moving down the plane
//sum of all forces perpendicular to the plane = 0
//N =Wcoso
//sum of all forces parallel to the plane = 0
//Fr+F1=Wsino
//sino-ucoso=F1/w    1
//When block starts moving up the plane
//sum of all forces perpendicular to the plane = 0
//N =Wcoso
//sum of all forces parallel to the plane = 0
//Wsino+Wucoso=F2
//using these equations
o=asin((F1*0.5/W)+(F2*0.5/W))   //angle of inclination
printf("\n Angle of inclination is  %0.3f  ",o*180/3.14)
//using 1
u=sin(o)-F1/W
printf("\n coefficient of friction is %0.3f  ",u)
