
//Variable Declaration

LE=49  //Latitude of earth station(degrees)
aGSO=42164  //Circumference of earth(km)
R=6371  //Radius of earth(km)

//Calculation
d=(R**2+aGSO**2-2*R*aGSO*cos(LE*3.142/180))**0.5  //Range of earth station antenna
El0=acos(aGSO*sin(LE*3.142/180)/d)  //Elevation angle(radians)
El0=El0*180/3.142  //Converting El0 to degrees
delta=round(90-El0-LE)  //Angle of tilt required for polar mount

//Results
printf("The Angle of tilt required for polar mount is %d degrees",delta)
