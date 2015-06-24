//Chapter 1,Example 1.2 Page 52
clc
clear
// Refering the table in example 1.2
// slope between any two points (log(I/I0)/x)
// taking the gap between 2 and 2.5 mm
I1= 1.5*10^-12
I2= 5.6*10^-12
I0 = 6*10^-14
gi1 = log(I1/I0) // gradual increase when gap is 2
gi2 = log(I2/I0) // gradual increase when gap is 2.5 //claculation in text is wrong
slope = (gi1-gi2)/0.05
printf(" Slope = %f \n", -slope) 
//evaluvating ghama
e1 = exp(-slope*0.5)
e2 = exp(-slope*0.5) // -1 is ignored due to the large magnitude
ghama = (7*10^7-6*e1)/(e2*7*10^7)
printf(" Ghama for set 1= %e /cm \n ", ghama)
//Gap between the slope for set 2
alpha = log(12/8)/0.05
printf(" Alpha = %e collosions/cm \n", alpha)
e1 = exp(alpha*0.5)
e2 = exp(alpha*0.5) // -1 is ignored due to the large magnitude
ghama = (2*10^5-e1)/(e2*2*10^5)
printf(" Ghama for set 2= %e colissions/cm \n", ghama)

//Answers may vary due to round of error  
