//example 9.5
clc; funcprot(0);
Mmax=43.72;
sp=["PSA-31","PSA-23"];//sheet pile
H=[7.9,7.9]
I=[4.41e-6,5.63e-6];
p=[0.00466,0.00365];
S=[10.8e-5,12.8e-5];
Md=[18.63,22.08];
printf("SheetPile    I(m^4/m)  H(m)  p\t     Logp  S(m^3/m)  Md(kN-m/m) Md/Mmax \n")
for i=1:2
    Logp(i)=log10(p(i));
    k(i)=Md(i)/Mmax;
    printf("%s\t   %.2e    %.2f %f %.2f %.2e   %.2f\t %.3f\n",sp(i),I(i),H(i),p(i),Logp(i),S(i),Md(i),k(i));
    
end
plot(Logp,k);
xtitle("","LogP","Md/Mmax");

