//Ex7_1 PG-7.13
clc
Idss=10e-3;
Vgs_off=-4;
printf("For Vgs =0 V")
Vgs=0;
Id=Idss;
printf("\n Idss=%.0f mA \n",Id*1e3)
printf("\n For Vgs =-1 V")
Vgs=-1;
Id=Idss*(1-Vgs/Vgs_off)^2;
printf("\n Idss=%.3f mA \n",Id*1e3)
printf("\n For Vgs =-4 V")
Vgs=-4;
Id=Idss*(1-Vgs/Vgs_off)^2;
printf("\n Idss=%.0f A \n",Id)
//In the book this example is mention as Example-4_3
//but  it is the first example in this chapter so I've taken this as Example-7_1 

