clc
// Given That
rotation=13.2// in degree
conc=0.1// gram per cubic cm
l=2// length of tube in dm
//Sample Problem 33 Page No. 60
printf("\n # Problem 33 # \n ")
printf(" \n Standard formula used \n   delta=pi*d*del_mu/lambda \n")
s= (rotation*(%pi/180))/ (l*conc)
specific_rotation=s*180/%pi
printf("Specific rotation of sample is %d degree. \n",specific_rotation)



