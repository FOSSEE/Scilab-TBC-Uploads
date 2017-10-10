//chapter24
//example24.1
//page533

RBB=10 // kilo ohm
eta=0.6

//eta=RB1/(RB1+RB2) = RB1/Rbb so
RB1=eta*RBB
RB2=RBB-RB1
printf("RB1 = %.3f kilo ohm \n",RB1)
printf("RB2 = %.3f kilo ohm",RB2)
