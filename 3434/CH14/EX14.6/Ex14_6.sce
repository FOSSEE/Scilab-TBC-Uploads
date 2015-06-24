clc
//given data
A=30000.0 // amount save each year in rs
i=10/100.0 // interest rate 
n=8 // time in years

P=A*(((1+i)**n)-1)/(i*((1+i)**n)) // amount spent on replacement in rs  
printf("Amount spent on replacement is Rs %i",P)
