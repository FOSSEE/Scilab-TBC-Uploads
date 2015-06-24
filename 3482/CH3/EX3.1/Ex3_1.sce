clc;
// Given data
//page 85
F=100; // lb , Vertical force applied to end of lever
theta=60;// degree, angle made by lever with +ve X axis
l=24; //  , length of lever

// a ) Momemt about O
d=l*cosd(theta);// mm ,perpendicular distance from  o to the line of action
 
Mo=F*d;// N.m, Magnitude of moment about O 
printf("Magnitude of moment about O of the 500 N is %d lb.in and it is in clockwise direction as force tends to rotate lever clockwise\n",Mo);

// b) Horizontal force

d=l*sind(theta);//in, perpendicular distance from  o to the line of action

F=Mo/d;// N, Horizontal Force at A required to produce same Moment about O
printf("Magnitude of Horizontal Force at A required to produce same Moment about O is %f lb \n",F);

// c)Smallest force

// F is smaller when d is maximum in expression Mo=F*d, so we choose force perpendicular to OA
Mo=1200//in lb
d=24// in ,perpendicular distance from  o to the line of action
F=Mo/d;// N, Smallest Force at A required to produce same Moment about O
printf("Magnitude of smallest Force at A required to produce same Moment about O is %f lb \n",F);

//d) 1200 N vertical force
Mo=1200;// lb-in,
F=240//in lb
d=Mo/F;// m, perpendicular distance from  o to the line of action of force
OB=d/cosd(theta);//m, distance of point B from O

printf("Verical force of 1200 N must act at %f in far from the shaft to create same moment about O\n",OB);



























