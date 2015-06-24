
clear;
clc;
printf("\t Example 7.11\n");

s1=35;                //percentage of solution
x1=6000;              //weight of Na2CO3 solution
s2=21.5;              //solubility at 20 degree per 100 gm of water
w2=296;                 //molecular weight of Na2CO3.10H2O
per=116/w2 *100;        //percentage solute in Na2CO3.10H2O
w1=s1*x1;            //weight of solute
w3=x1*0.04;          //weight of solution lost by vaporisation
//let x be the quantity of Na2CO3.10H2O formed 
//making material balance 
x=poly([0],'x');        //calc. x the weight of crystal
t=roots(2100-(.391*x)-(6000-240-x)*(21.5/121.5));             
printf("\n the weight of Na2CO3.10H2O crystal formed after crystallisation :%f kg",t);


//end