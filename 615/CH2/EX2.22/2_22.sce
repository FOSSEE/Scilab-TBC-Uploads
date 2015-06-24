//acids and bases//
//example 2.22//
ly=11.92;//equivalent conductvity of 0.02acetic acid solution in mho at 20C//
lih=360;//the equivalent ionic conductance of an infinite dillution of hydrogen ion in mho//
lic=40;//of acetate ion//
li=lih+lic;//of acetic acid//
a=ly/li;//degree of dissociation//
N=0.02;//normality of acetic acid//
V=1/N;
K=(a^2)/V;
Ka=K/10^-6;
printf("Dissociation constant of acetic acid is %f*10^-6",Ka);
W=82;//mol.wt of CH3COONa//
M=8.2//amount of sodium acetate added in g per litre solution//
printf("\nIn the presence of sodium acetate,all the acetate ions are obtained from sodium acetate only");
CH3COO=M/W;
printf("\nCH3COO- ion concentration is %fg.ion/lit",CH3COO);
printf("\nCH3COOH concentration is %fg.mol/lit",N);
H=K*N/CH3COO;
pH=-log10(K*N/CH3COO);
printf("\npH of the solution is %f",pH);
