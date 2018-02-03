clear
//
//
//

//Variable declaration
m1=15
n=5
m2=25
D15=0.62     //diameter of 15th ring(cm)
D5=0.3       //diameter of 5th ring(cm)

//Calculation
x=D15**2-D5**2
y=m1-n
z=m2-n
r=4*z/(4*y)     
D25=sqrt((r*x)+(D5**2))     //diameter of 25th ring(cm)

//Result
printf("\n diameter of 25th ring is %0.3f  cm",D25)
