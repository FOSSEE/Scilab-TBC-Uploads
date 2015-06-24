//find max and min intensties of stress in the section
clc
//solution
//given
//refer fig 5.21
b=150//mm
d=120//mm
P=180*10^3//N
e=10//mm
A=b*d//mm^2
fo=P/A//N/mm^2//direct compressive stress
//Z=Iyy/y
Z=d*b^2/6//mm^3
M=P*e//N-mm
fb=M/Z//bending stress//N/mm^2
Fm=fo+fb//max stress
Fmi=fo-fb//min stress
printf("the max stress is,%f N/mm^2\n",Fm)
printf("the min stress is,%f N/mm^2",Fmi)

