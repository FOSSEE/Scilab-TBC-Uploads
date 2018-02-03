clear
//
//
//

//Variable declaration
lamda=5000*10**-8      //wavelength(cm)
e=1/6000               //number of lines(cm)

//Calculation
theta1=asin(lamda/e)*180/%pi       //angle for 1st order(degrees)            
theta2=asin(3*lamda/e)*180/%pi     //angle for 3rd order(degrees)            
theta=(theta2)-(theta1)      //difference in angles of deviation(degrees)


//Result
printf("\n difference in angles of deviation is %0.3f  degrees",theta)
