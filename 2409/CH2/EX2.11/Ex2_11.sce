
//Variable Declaration

JDref=2415020   //Reference Julian days
JC=36525
JD=2451897.0417 //Julian days with reference from Example 2.10

//Calculation

T=(JD-JDref)/JC  //Time in julian Centuries

//Result

printf("The time for given date is : %.8f Julian Centuries",T)
