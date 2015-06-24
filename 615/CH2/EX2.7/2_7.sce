//acids and bases//
//example 2.7//
N1=1/10;//normality of NaOH//
N2=1/20;//normality of HCl//
V1=1;//volume of NaOH in lit//
V2=1;//volume of HCl in lit//
printf("Since NaOH is stronger than HCl,the resultant solution will contain excess of NaOH");
V=V1+V2;//volume of resultant solution//
N=(N1*V1-N2*V2)/V;
printf("\nOH- ion concentration is %fg.ion/lit",N);
k=1*10^-14;//ionization constant of water//
H1=k/N;
H=H1/10^-13;
printf("\nH+ ion concentration is %f*10^-13g.ion/lit",H);
pH=-log10(H1);
printf("\npH of the solution is %f",pH);
