clc
//Chapter7
//Example7.8
//Given
g01=30// gain of 1st stage
g02=20//gain of 2nd stage
g03=40//gain of 3rd stage
F2=6// Noise factor of stage 2
F3=12// Noise factor of stage 3
Te1=4// Eq noise temp of stage 1
T=290// Room 
G01=round(10^(g01/10))
G02=round(10^(g02/10))
G03=round(10^(g03/10))
F_2=round(10^(F2/10))
F_3=round(10^(F3/10))
Te2=round((F_2-1))*T
Te3=round((F_3-1))*T
Te=Te1+(Te2/G01)+(Te3/(G01*G02))// Eq overall noise temp
mprintf('The equivalent noise temp is: %f K',Te)





