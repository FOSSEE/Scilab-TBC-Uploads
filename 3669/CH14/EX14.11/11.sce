
//Variable declaration
D5=0.3;      //diameter of 5th ring(cm)
D15=0.62;    //diameter of 15th ring(cm)

//Calculation
D_25=2*(D15**2)-(D5**2);
D25=sqrt(D_25);      //diameter of 25th ring(cm)

//Result
printf('diameter of 25th ring is %0.3f    cm \n',(D25))