
clc
//solution
//given
P=45000//N//load applied
A1=45*20//mm^2//area of cross section at link A-A
//stress in section A-A
f1=P/A1//(N/mm^2)
printf("the stress in section A-A is ,%f N/mm^2\n",f1)
//stress in section B-B
A2=20*(75-40)//mm^2//area of cross section at link B-B
f2=P/A2//(N/mm^2)
printf("the stress in B-B section ,%f N/mm^2",f2)
