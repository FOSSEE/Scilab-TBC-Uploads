clear;
//clc();
z1=100;
z2=600;
z3=1000;
ef=1000;
et=2*ef/((1/z2 + 1/z3)*100 +1);
er=et -ef;
printf("The reflected voltage in the line is:%.0f V\n",er);

i1=et/z2;
i2=et/z3;
i=i1 + i2;
printf("The current in the cable is:%.2f A\n",i);

