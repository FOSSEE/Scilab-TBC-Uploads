//Variable Declaration
x = [0.1 0.4 0.1 ; 0.2 0.2 0]

//Calculation
p1 = x(2,1)/sum(x(2,1:3))  // for x1=0 & x2=1  
p2 = x(2,2)/sum(x(2,1:3))  // for x1=1 & x2=1  
p3 = x(2,3)/sum(x(2,1:3))  // for x1=2 & x2=1  

// Result
printf ( "P(0|1): %.2f , P(1|1): %.2f , P(2|1) : %.2f",p1,p2,p3)
printf ( "As P(0|1) is not equal to P(0) (0.5!=0.3) i.e. X1 & X2 are dependent" )
