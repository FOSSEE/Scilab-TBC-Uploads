clc
//solution
//given
P=3.5*10^6//N//load applied
f1=85//(N/mm^2)// safe stress
E=210*10^3//(N/mm^2)//young's modulus
l=2.5*10^3//mm
pi=3.14
//1)diameter of rod(d)
//let d be diameter of rods in mm
//since both rods carries equal load ,therefore load on single rod is
P1=P/2//N
d=sqrt(4*P1/(f1*pi))//using f1=P/A//mm
printf("the diameter of rods is,%f mm\n",d)
//2)extension in rod
//let x be extension in rod
//E=(P1*l)/(A*x)
 //P1/A=f1
x=(f1*l)/E
printf("the extension of rod is,%f mm",x)