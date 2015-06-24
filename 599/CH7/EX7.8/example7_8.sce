
clear;
clc;
printf("\t Example 7.8\n");

s1=20.51;              //solubility at 10 degree per 100 gm of water
w2=277.85;                 //molecular weight of FeSO4.7H2O

//let x be the quantity of Na2CO3.10H2O
x=poly([0],'x');         //calc. x the weight of crystal
t=roots(900*.4-.5465*x-(900-x)*20.5/120.5);             
printf("\n the weight of quantity of FeSO4.7H2O formed  :%f kg",t);

p=(277.85/151.85)*900*(0.4);       //weight of crystal present in the original solution
yield=t/p;                 //percentage yield 
printf("\n percentage yield :%f percent",yield*100);
//end