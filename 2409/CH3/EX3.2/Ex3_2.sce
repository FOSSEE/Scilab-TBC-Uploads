
//Variable Declaration

R=6371  //Radius of earth (km)
aGSO= 42164  //Circumference of earth(km)
b=0.632 //values of b from Example 3.1 (radians)
//Calculation

d=sqrt(R**2+aGSO**2-2*R*aGSO*cos(b)) //Range of earth station antenna (km)
El=acos(aGSO*sin(b)/d)*180/%pi  //Elevation angle(degrees)

//Results

printf("The range of earth station antenna is %.0f km",d)
printf("Elevation angle is %.0f degrees",El)
