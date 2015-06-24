
clear;
clc;
printf("\t Example 7.1\n");

//let x be the weight of water in the quantity of solution needed

c=.498;                //solute content afetr crystallisation
W1=111;                //molecular weight of CaCl2
W2=219;                //molecular weight of CaCl2.6H2O
M1=(108/W2)*100;       //water present in 100kg of CaCl2.6H2O
M2=(W1/W2)*100;       //CaCl2 present in 100kg of CaCl2.6H20
//t=M2+c*x;           //total weight entering the solubility
//x+49.3;             total water solubility used
//s*(x+49.3)/100      //total Cacl2 after solubility
x=poly([0],'x');        //calc. x the weight of crystal
t=roots((M2+c*x)-(x+49.3)*.819);             
printf("\nthe weight of water in the quantity of solution needed :%f kg",t);

h=(c)*t;           //weight of CaCl2 corresponding to weight water
tw=t+h;              // total weight of the solution
printf("\nthe  total weight of the solution is :%f kg",tw);
//end