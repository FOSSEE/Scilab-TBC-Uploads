//Variable Declaration
x = [ 0.1 0.4 0.1; 0.2 0.2 0] 

//Calculation

p = x(1,3) + sum(x(2:2,2:3))

p0 = sum(x(1:2,1))  // for x1=0  
p1 = sum(x(1:2,2))  // for x1=1
p2 = sum(x(1:2,3))  // for x1=2


// Result
printf ( "Part(A): %.2f",p)
printf ( "Part(B): P(x1=0): %.2f , P(x1=1): %.2f , P(x1=2): %.2f",p0,p1,p2)
