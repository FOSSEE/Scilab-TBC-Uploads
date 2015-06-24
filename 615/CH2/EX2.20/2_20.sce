//acids and bases//
//example 2.20//
N1=0.2//concentration of acetic acid in g.molecule/lit//
N2=0.25//concentration of sodium acetate in g.molecule/lit//
K=1.8*10^-5//ionization constant of acetic acid at room temparature//
pH1=-log10(K)+log10(N2/N1);
printf("pH value of the solution before adding HCl is %f",pH1);
N=1//normality of HCl added//
V=0.5*10^-3//amount of HCl added in lit//
M=N*V
printf("\nThe amount of HCl added in moles is %f",M);
printf("\nassuming HCl to be completely ionized,the amount of H+ ions added will be %f mole",M);
printf("\n due to addition of H+ ions the amount of acetic acid will increase and that of salt will correspondingly decrease by %f moles",M);
C1=N1+M//concentration of CH3COOH in moles/lit//
C2=N2-M//concentration of CH3COONa in moles/lit//
pH2=-log10(K)+log10(C2/C1);
printf("\nThe pH of the solution after adding HCl is %f",pH2);
pH=pH1-pH2;
printf("\nThe change of pH is %f",pH);