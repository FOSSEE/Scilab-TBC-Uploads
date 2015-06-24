//acids and bases//
//example 2.26//
S=0.2;//salt concentration//
A=0.2;//acid concentration//
k=1.8*10^-5;//dissociation constant of acetic acid//
pH=-log10(k)+log10(S/A);
printf("pH of the buffer solution before adding HCl is %f",pH);
v=1*10^-3;//amount of HCl added in lit//
M=1;//molarity of HCl added//
n=v*M;//no of moles of HCl added per litre//
A1=A+n;
printf("\nAcetic acid concentration after adding HCl will be %fM",A1);
S1=S-n;
printf("\nAcetate concentration after adding HCl will be %fM",S1);
pH2=-log10(k)+log10(S1/A1);
printf("\npH of the buffer solution after adding HCl is %f",pH2);
p=pH-pH2;
printf("\nChange in pH is %f",p);