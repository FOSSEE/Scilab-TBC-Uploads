
clear;
clc;
printf("\t Example 7.6\n");

s1=12.5;                  //solubility of Na2CO3 at 10 degree per 100 gm of water
p1=.3;                   //percentage of the solute in the solution
w1=2000;                 //weight of the solution taken
w2=106;                 //molecular weight of Na2CO3.
M1=(w2/(180+w2));        //solute (Na2CO3) present in the Na2CO3.10H2O solution
//let x be the quantity of Na2CO3.10H2O crystal formed
x=poly([0],'x');         //calc. x the weight of crystal
t=roots(w1*p1-M1*x-(w1-x)*(s1/(100+s1)));             
printf("\n the weight of quantity of Na2CO3.10H2O  :%f kg",t);
//in the book the ans is wrong, they have calculated 2000*0.3-2000*12.5/112.5 as =x(miscalculation)

p=(286/106)*w1*p1;           //weight of Na2CO3.10H2O crystal present in the original solution
yield=t/p;                 //percentage yield 
printf("\n percentage yield :%f percent",yield*100);
//end