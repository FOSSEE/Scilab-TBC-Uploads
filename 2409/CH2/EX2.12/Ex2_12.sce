
//Variable Declaration

n=14.23304826  //Mean Motion (rev/day)
M0=246.6853    //Mean Anomaly (degrees)
t0=223.79688452 //Time of anomaly

//Calculation

T = (t0-(M0/(n*360)))  //Time of perigee passage

//Result
printf("The time of perigee passage for NASA elements is : %.4f days",T)
