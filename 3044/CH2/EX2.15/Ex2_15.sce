//Variable declaration
x =  [225 3 ; 265 11; 305 23 ; 345 9 ; 385 4]
temp1 = 0
temp2 = 0

//Calculation
for i = 1:5
    temp1 = temp1 + x(i,1)*x(i,2)
end    

Mean = temp1/sum(x(1:5,2))    // mean=sum(x(i)*f(i))/sum(f(i)  class average 

for i  = 1:5
    temp2 = temp2 + x(i,1)*x(i,1)*x(i,2)
end    

variance = (temp2 - (temp1^2) / sum(x(1:5,2))) / (sum(x(1:5,2))-1)   // variance
std_dev= sqrt(variance)                // standard deviation

//Results
printf ( "mean : %.f ",Mean )
printf ( "variance : %.2f",variance )
printf ( "standard deviation : %.1f",std_dev)
