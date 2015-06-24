
//Variable Declaration

Pss=-90   //Location of geostationary satellite(degrees)
PE=-100   //Longitude of the earth station antenna(degrees)
LE=35     //Latitude of the earth station antenna(degrees)

//Calculation

B=PE-Pss   //Angle between planes containing a and c(degrees)
b=acos(cos(B)*cos(LE)) //Angle of plane containing b(radians)
A=asin(sin(abs(B*3.142/180))/sin(b)) //Angle between planes containing b and c (radians)

A=A*180/3.142  //Converting A into degrees
//LE>0 and B<0 by observation
Az= 180-A     //Azimuth angle(degrees)

//Result

printf("The azimuth angle for the given earth station antenna is %.2f degrees",Az)
