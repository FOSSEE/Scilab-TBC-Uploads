//To find speed of shaft
clc
//Given:
N1=150 //rpm
d1=750, d2=450, d3=900, d4=150 //mm
//Solution:
//Calculating the speed of the dynamo shaft when there is no slip
N41=N1*(d1*d3)/(d2*d4) //rpm
//Calculating the speed of the dynamo shaft whne there is a slip of 2% at each drive
s1=2, s2=2 //%
N42=N1*(d1*d3)/(d2*d4)*(1-s1/100)*(1-s2/100) //rpm
//Results:
printf("\n\n Speed of the dynamo shaft when there is no slip, N4 = %d rpm.\n\n",N41)
printf(" Speed of the dynamo shaft when there is a slip of 2%c at each drive, N4 = %d rpm.\n\n","%",N42)