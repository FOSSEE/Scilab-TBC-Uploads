//acids and bases//
//example 2.10//
W=0.092;//weight of Formic acid per litre in grams//
M=46;//molecular weight of Formic acid//
N=W/M;
printf('The normality of Formic acid is %fg.equivalent/lit',N);
V=1/N;
K=2.4*10^-4;//Dissociation constant of Formic acid at 25C//
a=sqrt(K*V);//For weak acids//
printf('\nDegree of dissociation is %f',a);
H=a*N;
printf('\n The H+ concentration of the solution is %fg.ion/lit',H);