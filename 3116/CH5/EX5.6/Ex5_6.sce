

clc
// given that 
N=45 //Number of grains per square inch
M=85 // magnification

printf("Example 5.6\n");
printf("\n Part A");
n=(log(N)/log(2))+1 //calculation for grain size no.  N=2^(n-1)
printf("\n Grain size number is %.1f\n",n)
printf("\n Part B")
Nm=(100/M)^2*2^(n-1)
printf("\n At magnification of 85x\n")
printf(" Number of grains per inch square are %.2f\n",Nm)
// answer in book is 62.6. It is because of rounding off at intermediate stages
