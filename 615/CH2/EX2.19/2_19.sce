//acids and bases//
//example 2.19//
k=1.8*10^-5;//dissociation constant of acetic acid//
M=0.01;//molarity of acetic acid//
N=M*1;//normality of acetic acid//
V=1/N;
a=sqrt(k*V)//degree of dissociation for weak acids//
printf("degree of dissociation of solution is %f",a);
H1=a/V;
H=H1/10^-4;
printf("\nH+ concentration in solution is %f*10^-4g.ion/lit",H);
pH=-log10(H1);
printf("\npH of the solution is %f",pH);