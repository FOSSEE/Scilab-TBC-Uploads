//example-5.7
//page no-158
//given
//no of grains within the view of a micrograph
n1=41
//no of grains cut by circumference
n2=42
//diameter of circular area
d=1  //inch
//area
A=(%pi)/4*d^2  //inch^2
//the area density of grains

N=(n1+n2/2)/A  //grains/inch^2
//grain size
n=log(N)/log(2)+1  
printf ("the area density of grains is %f grains/inch^2 and grain size is 8",N)
