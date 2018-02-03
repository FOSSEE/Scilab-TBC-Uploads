clear
//
//
//

//Variable declaration
lamda1=5016*10**-8      //wavelength(cm)
lamda2=5048*10**-8      //difference in wavelength(cm)
k=2                     //order
n=15000                 //number of lines/inch

//Calculation
e=2.54/n                
theta1=asin(2*lamda1/e)*180/%pi    //angle for 1st wavelength(degrees)            
theta2=asin(2*lamda2/e)*180/%pi    //angle for 2nd wavelength(degrees)            
theta=int(60*(theta2-theta1))        //angle of separation(minutes)

//Result
printf("\n angle of separation is %0.3f  minutes",theta)
