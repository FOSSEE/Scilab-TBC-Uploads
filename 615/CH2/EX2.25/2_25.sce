//acids and bases//
//example 2.25//
N1=0.2;//normality of HCl//
V1=25;//volume of HCl in ml//
M2=0.25;//molarity of NaOH//
N2=M2*1;//normality of NaOH//
V2=50;//volume of NaOH in ml//
V=V1+V2;//volume of resulting solution//
N=(N2*V2-N1*V1)/V;//normality of resulting solution//
printf("Concentration of OH- per litre in the mixure will be %fM",N);
K=1*10^-14;//ionization constant of water//
H=K/N;
H1=H/10^-13;
printf("\nH+ concentration of the solution is %f*10^-13M",H1);
pH=-log10(H);
printf("\npH of the mixure will be %f",pH)