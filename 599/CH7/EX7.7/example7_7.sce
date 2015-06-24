
clear;
clc;
printf("\t Example 7.7\n");

s1=139.8;              //solubility at 80 degree per 100 gm of water
s2=110.5;              //solubility at 20 degree per 100 gm of water
w2=174.2;                 //molecular weight of K2CO3.10H2O
M1=(138/w2)*100;        //water present in 100kg of K2CO3.10H2O
//let x be the quantity of Na2CO3.10H2O
x=poly([0],'x');         //calc. x the weight of crystal
t=roots(500*(139.8/239.8)-.7921*x-(500-x)*110.5/210.5);             
printf("\n the weight of quantity of K2CO3.10H2O formed  :%f kg",t);

p=(174/138)*500*(139.8/239.8);       //weight of crystal present in the original solution
yield=t/p;                 //percentage yield 
printf("\n percentage yield :%f percent",yield*100);
//end