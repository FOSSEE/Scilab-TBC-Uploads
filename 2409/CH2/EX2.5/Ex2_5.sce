
//Variable Declaration
i=98.6328      //Angle(degrees)
e=0.0011501    //eccentricity
n=14.23304826  //Mean Motion(1/day)
a=7192.3       //Semimajor axis(km)
K1=66063.1704  //Known constant(km^2)

//Calculation

n0=(2*180*n)  //Mean Motion (deg/sec)
K=(n0*K1)/((a**2)*((1-e**2)**2))  //Constant (deg/day)
w=-K*cos(i*3.142/180)    //Rate of regression of nodes(deg/day)
W=K*(2-2.5*(sin(i*3.142/180))**2)   //Rate of rotation of line of apsides(deg/day)

//Results
printf("The rate of regression of nodes is: %.3f deg/day",w)
printf("\nThe rate of rotation of line of apsides is : %.3f deg/day",W)
