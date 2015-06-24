clc 
// Given that
n=5// in inch sample size
m=10// in inch number of samples
// The table of the queston is given of page no.990 Table 36.3

// Sample Problem on page no. 990

printf("\n # Calculation of Control Limits and Standard Deviation# \n")
avgx=44.296 //from the table 36.3 by adding values of mean of x
x = avgx/m
avgR=1.03 //from the table 36.3 by adding values of R
R = avgR/m
//from the data in the book 
A2=0.577
D4=2.115
D3=0
UCLx = x+(A2*R)
LCLx = x-(A2*R)
printf("\n\n Control Limits for Averages are =\n UCLx =  %f in \n UCLy =  %f in",UCLx,LCLx) 

UCLR =D3*R
LCLR =D4*R

printf("\n\n Control Limits for Ranges are =\n UCLR =  %f in \n UCLR =  %f in",UCLR,LCLR) 

//from table
d2=2.326
sigma= R/d2
printf("\n\n Standard Deviation = %f in",sigma) 









