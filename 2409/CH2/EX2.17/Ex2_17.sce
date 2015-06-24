
//Variable Declaration
pi = %pi
T=1.009638376  //Time in Julian centuries from Example 2.11
UT=13  //Universal time(hours)

//Calculation

GST=(99.6910+36000.7689*T+0.004*T**2)*3.142/180  //GST(radians)
UT=2*pi*UT/24  //Universal time converted to fraction of earth rotation (radians)

GST=GST+UT 


GST=(modulo(GST,2*pi))*180/pi

//Result
printf("The GST for given date and time is %.2f degrees",GST)
