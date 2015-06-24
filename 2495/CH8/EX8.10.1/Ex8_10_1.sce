clear
clc
RT_F=0.05915;//in V
Ecell=0.0295;//in V
A=0.1;//
B=0.01;//
n=(RT_F/Ecell)*(log10(A/B));//
printf('n=%.1f',n)

//page 459
