clc;
// Given data
F=500; // N , Vertical force applied to end of lever
theta=60;// degree, angle made by lever with +ve X axis
theta=theta*%pi/180;// Conversion of angle into radian
l=600; // mm , length of lever

// a ) Momemt about O
d=l*cos(theta);// mm ,perpendicular distance from  o to the line of action
d=d/1000; // m, conversion into meter
Mo=F*d;// N.m, Magnitude of moment about O 
printf("Magnitude of moment about O of the 500 N is %.2f N.m and it is in clockwise direction as force tends to rotate lever clockwise\n",Mo);

// b) Horizontal force

d=l*sin(theta);//mm, perpendicular distance from  o to the line of action
d=d/1000; // m, conversion into meter
F=Mo/d;// N, Horizontal Force at A required to produce same Moment about O
printf("Magnitude of Horizontal Force at A required to produce same Moment about O is %.2f N\n",F);

// c)Smallest force

// F is smaller when d is maximum in expression Mo=F*d, so we choose force perpendicular to OA
d=0.6;// m ,perpendicular distance from  o to the line of action
F=Mo/d;// N, Smallest Force at A required to produce same Moment about O
printf("Magnitude of smallest Force at A required to produce same Moment about O is %.2f N\n",F);

//d) 1200 N vertical force
F=1200;// N, verical force producing same movement on lever acting at pt B
d=Mo/F;// m, perpendicular distance from  o to the line of action of force
OB=d/cos(theta);//m, distance of point B from O
OB=OB*1000;//mm, conversion into millimeter
printf("Verical force of 1200 N must act at %.2f mm far from the shaft to create same moment about O\n",OB);


