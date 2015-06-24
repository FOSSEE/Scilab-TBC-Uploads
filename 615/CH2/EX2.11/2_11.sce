//acids and bases//
//example 2.11//
disp("In the presence of highly ionised NH4Cl,ammonium hydroxide is practically unionised.Thus all NH4+ ions are obtained from the dissociation of NH4Cl");
k=2.5*10^-5;//dissociation constant of NH4OH//
N=1/100;//normality of NH4OH//
C=N;//since volume of solution is one litre//
NH=C;
printf("NH4+ concentration is %fg.ion/lit",NH);
NHOH=C;
printf("\nNH4OH concentration is %fg.ion/lit",NHOH);
OH1=k*NHOH/NH;
OH=OH1/10^-5;
printf("\nHydroxyl ion concentration in the solution is %f*10^-5",OH);
a=OH1/N;
printf("\nDegree of dissociation of the solution is %f",a);