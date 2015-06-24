
clear;
clc;
printf("\t Example 7.10\n");

s1=38.8;              //solubility at 30 degree per 100 gm of water
s2=12.5;              //solubility at 10 degree per 100 gm of water
w2=296;                 //molecular weight of Na2CO3.10H2O
per=116/w2 *100;        //percentage solute in Na2CO3.10H2O

//let x be the quantity of Na2CO3.10H2O
w=200;                    //original solotion weight
m1=w*(s2/(s2+100));       //weight of Na2CO3.10H2O needed to dissolve Na2CO3 present in the original solotion 
w3=w-m1;                 //weight of water 
//w4=m1+per/100;            weight of Na2CO3 after dissolution
x1=s1/(s1+100);           //weight fraction of solute after dissolution 
printf("\n the weight of quantity of Na2CO3.10H2O  formed  :%f kg",w3);

//for the total solution after dissolution
x=poly([0],'x');        //calc. x the weight of crystal
t=roots((m1+per*x/100)-((m1+per*x/100)+(w3+.609*x))*x1);             
printf("\nweight of Na2CO3.10H2O needed to dissolve Na2CO3 present in the original solution  %f kg",t);

//end