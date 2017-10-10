//chapter 4 Ex 21

clc;
clear;
close;
rent=2/5; food=3/10; conveyance=1/8; Amtleft=1400;
PartLeft=1-(rent+food+conveyance);
salary=Amtleft/PartLeft;
eFood=food*salary;
eConveyance=conveyance*salary;
printf("The expenditure on food is Rs. %3.0f and that on conveyance is Rs. %3.0f",eFood,eConveyance);
