
//Variable Declaration
pi = %pi
n=14.2171401*2*%pi/86400  //Mean motion (rad/sec)
M=204.9779+0.001*180*5/pi //Mean anomaly(rad)
e=9.5981*10**-3   //Eccentricity
a=7194.9   //Semimajor axis(km)

//Calculation

v=(M*pi/180)+2*e*sin(M*pi/180)+(5*e**2*sin(2*M*pi)/(4*180)) //True Anomaly (radians)
v=v*180/%pi  //True anomaly(degrees)
r=a*(1-e**2)/(1+e*cos(v))  //Magnitude of radius vector after 5s(km)

//Results
printf("The true anomaly is: %.3f degrees",v)
printf("\nThe magnitude of radius vector 5s after epoch is: %d km",r)
