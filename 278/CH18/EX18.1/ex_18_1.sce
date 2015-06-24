//find..
clc
//soltuion
//given
N1=150//rpm
d1=750//rpm
d2=450//mm
d3=900//mm
d4=150//mm
s1=0.02
s2=0.02
//ref fig 18.12
N4={(d1*d3)/(d2*d4)}*N1//rpm
printf("the value of N4 is,%f rpm\n",N4)
//wen slip is there
N4s={(d1*d3)/(d2*d4)}*N1*(1-s1)*(1-s2)//rpm
printf("the value N4 when slip is there is,%f rpm",N4s)
