//acids and bases//
//example 2.13//
k=1.8*10^-5;//dissociation constant of acetic acid at 18C//
N=0.25;//normality of acetic acid solution//
V=1/N;
a=sqrt(k*V);//formula of degree of dissociation for weak acids//
a1=a/10^-3;
printf("Degree of dissociation of acetic acid is %f*10^-3",a1);
H=N*a;
H1=H/10^-3;
printf("\nH+ concentration of the solution is %f*10^-3g.ion/litre",H1);
N2=0.25//normality os sodium acetate added//
printf("\nIn presence of completely dissociated sodium acetate,acetic acid will be practically unionisad.Thus,all the acetate ions are obtained from dissociation of sodium acetate.");
CH3COO=N2;
printf("\nConcentration of CH3COO- is %fg.ion/litre",CH3COO);
CH3COOH=N2;
printf("\nConcentration of CH3COOH is %fg.ions/lit",CH3COOH);
H2=k*CH3COOH/CH3COO;
H3=H2/10^-5;
printf("\nH+ ion concentration after adding sodium acetate is %f*10^-5",H3);
a2=H2/N2;
a3=a2/10^-5;
printf("\nDegree of dissociation after adding sodium acetate is %f*10^-5",a3);