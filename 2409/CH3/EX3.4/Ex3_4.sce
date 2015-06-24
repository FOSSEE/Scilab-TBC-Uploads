
//Variable Declaration

LE=48.42  //Latitude of earth station(degrees)
PE=-89.26 //Longitute of earth station(degrees)
Elmin=5  //Minimum angle of elevation(degrees)
aGSO=42164  //Circumference of earth(km)
R=6371  //Radius of earth(km)

//Calculation

Smin=90+Elmin
S=asin(R*sin(Smin*3.142/180)/aGSO)*180/%pi  //Angle subtended at the satellite(degrees)

b=180-Smin-S   //Angle of plane containing b(degrees)
B=acos(cos(b*3.142/180)/cos(LE*3.142/180))*180/%pi//Angle between the planes containing a and c(degrees)

//Results

printf("The satellite limit east of the earth station is at %d Degrees approximately",round(PE+B))

printf("The satellite limit west of the earth station is at %d Degrees approximately",round(PE-B))
