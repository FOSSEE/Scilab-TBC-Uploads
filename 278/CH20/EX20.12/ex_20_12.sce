//finf dia of wire
clc
//soltuion
//given
W=25000//N
w=15000//n
//D=30*d
a=1//m/s^2
er=80000//N/mm^2
fu=1800//N/mm^2
//A=0.38*d^2
//let d be dia of rope
Wd=W+w//N
//dw=0.063*d..
//Wb=Er*dw/D*A=63.84*d^2//N
g=9.81
Wa=(W+w)/g*a
//Wt=Wd+Wa+Wb=44080+63.84*d^2//N....eq1
//WT=A*stress=A*fu/Fs=114*d^2//assume Fs=6...eq2
//from eq1 and eq2
d=sqrt(44080/(114-63.84))//mm
printf("choosing value of d from table 20.6,we get 32mm")
