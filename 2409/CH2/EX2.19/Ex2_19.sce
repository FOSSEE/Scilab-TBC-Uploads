
//Variable Declaration

LST=167.475 //LST(degrees)
LE=48.42    //Latitude at thunder bay(degrees)
H=200       //Height above sea level(metres)
aE=6378.1414 //Semimajor axis(km)
eE=0.08182   //Eccentricity

//Calculation

l=(aE/sqrt(1-eE**2*sin(LE*3.142/180)**2)+H/1000)*cos(LE*3.142/180)  
z=((aE*(1-eE**2))/sqrt(1-eE**2*sin(LE*3.142/180)**2)+H/1000)*sin(LE*3.142/180)  
RI=l*cos(LST*3.142/180) //I component of radius vector at thunder bay(km)
RJ=l*sin(LST*3.142/180) //J component of radius vector at thunder bay(km)
RK= z                 //Z component of radius vector at thunder bay(km)

R=sqrt(RI**2+RJ**2+RK**2)


//Results
printf("The Radius vector components are %.2f ikm+ %.2f jkm+ %.2f kkm",RI,RJ,RK)
printf("\nThe Magnitude of radius component is %.2f km",R)
