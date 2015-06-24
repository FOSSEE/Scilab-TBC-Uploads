//water chemistry//
//example 7.11//
P=0;//phenolplthalein alkalinity in water sample//
V=16.9;//required HCl in ml for 100 ml water sample//
N=0.02;//normality of HCl//
printf("Since P=0 the alkalinity is due to HCO3- ions");
C=50;//equivalent of CaCO3 in mg for 1 ml 1N of HCl//
A=C*V*N;
printf("\nIn 100ml water sample the alkalinity is %fmg",A);
B=A*1000/100;
printf("\nFor 1 litre of water the alkalinity is %fmg/l",B);