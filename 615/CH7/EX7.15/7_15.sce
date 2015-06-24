//water chemistry//
//example 7.15//
W1=0.28;//amount of CaCO3 in grams dissolved in 1 litre of water//
V1=28;//required EDTA in ml on titration of 100ml of CaCO3 solution//
V2=33;//required EDTA in ml for 100ml of unknown hard water sample//
V3=10;//required EDTA in ml for 100 ml of unknown sample after boiling and cooling//
M1=100/100;//multiplication factor of CaCO3//
C=W1*M1;
printf("1 litre sample have %fg in terms of CaCO3",C);
printf("\n1 ml sample have %fmgCaCO3",C);
A=C*100//for 100 ml of sample equivalent to 28 ml of EDTA//
B=A/V1;
printf("\n1ml of EDTA=%fmg CaCO3",B);
D=V2*B;//for 100 ml//
D=D*1000/100;
printf("\n1000ml of unknown water contains %fmgCaCO3",D);
printf("\nTotal hardness is %fmg/lCaCO3 or ppm",D);
E=V3*B;//for 100 ml//
E=E*1000/100;
printf("\n1000ml of boiled unknown water contains %fmgCaCO3",E);
printf("\nPermanant hardness is %fmg/l CaCO3 or ppm",E);
T=D-E;
printf("\nTemporary hardness is %fmg/l CaCO3 or ppm",T);

