//acids and bases//
//example 2.16//
N=1/100;//normality of acetic acid//
V=1/N;
k=1.8*10^-5;//dissociation constant of acetic acid//
a=sqrt(k*V);//formula of degree of dissociation for weak acids//
H=a*N;
H=H/10^-4;
printf("H+ concentration of the solution is %f*10^-4",H);
n=0.01;//sodium acetate added in moles to one litre of acetic acid solution//
CH3COO=n;
printf("\nCH3COO- concentration is %fg.ion/lit",CH3COO);
CH3COOH=n;
printf("\nCH3COOH concentration is %fg.ion/lit",CH3COOH);
H1=k*CH3COOH/CH3COO;
printf("\nH+ ion concentration in the solution after adding the sodium acetate is %fg.ions/litre",H1);