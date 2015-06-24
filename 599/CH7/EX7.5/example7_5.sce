
clear;
clc;
printf("\t Example 7.5\n");

p1=.3;                   //percentage of the solute in the solution
w1=1000;                 //weight of the solution taken
w2=142;                 //molecular weight of Na2SO4.
M1=(w2/(180+w2));        //solute (Na2SO4) present in the Na2CO3.10H2O solution
s1=40.8;              //solubility of Na2SO4 at 30 degree per 100 gm of water
s2=9.0;              //solubility of Na2SO4 at 10 degree per 100 gm of water
//percent weight of solute in Na2SO4.10H2O= 144/322
//let x be the weight of crystal formed 
x=poly([0],'x');         //calc. x the weight of crystal
t=roots((w1*40.8/140.8)-(.442*x+(w1-x)*(s2/(100+s2))));             
printf("\n the weight of  crystal formed after crystallisation :%f kg",t);

//end