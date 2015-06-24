//acids and bases//
//example 2.21//
K=18*10^-6;//dissociation constant of NH4OH//
N1=0.1;//normality of NH4OH solution//
V=1/N1;
a=sqrt(K*V)//since a is very small//
printf("degree of dissociation is %f",a);
OH=a/V;
printf("\nThe concentration of hydroxyl ion before adding of NH4Cl is %fg.ion/lit",OH);
W=2//weight of added NH4Cl in grams//
M=53//molecular weight of NH4Cl//
C=W/M;
printf("\nThe concentration of NH4+ ions is %fg.mol/lit",C);
C1=0.1;//concentration of NH4OH in g.mol/lit//
OH2=K*C1/C;
printf("\nThe concentration of hydroxyl ion after adding 2g of NH4Cl is %fg.ion/lit",OH2);
