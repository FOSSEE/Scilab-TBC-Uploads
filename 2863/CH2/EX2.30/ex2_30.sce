//chapter 2
//P=k(Ta+Tr)B
printf("\n");
Ta=15;
Tr=20;
b=4*10^6;
//part a
k=1.38*10^-23;
Pb=k*(Ta+Tr);
printf("the power per unit bandwidth is %gW/hz",Pb);
//part b
P=Pb*b;
printf("\nthe available noise power is %gW",P);
