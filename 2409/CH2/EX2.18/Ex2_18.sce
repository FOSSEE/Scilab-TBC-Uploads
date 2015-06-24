
//Variable Declararion
pi = %pi
WL=-89.26  //Expressing the longitude in degrees west
GST=282.449  //GST from Example 2.17 (degrees)

//Calculation

EL=2*pi+WL  //Longitude in degrees East 
LST=(GST+EL)*pi/180       //LST(radians)
LST=(modulo(LST,2*pi))*180/pi   //fmod removes multiple revolutions(Degrees)

//Results
printf("LST for Thunder Bay on given day is: %.2f Degrees",LST)

