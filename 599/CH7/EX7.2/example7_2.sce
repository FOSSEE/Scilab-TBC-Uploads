
clear;
clc;
printf("\t Exercise 7.1\n");

//part(i)
w1=1000;               //weight of solution to be cooled
s1=104.1;              //solubility at 50 degree per 100 kg of water
s2=78.0;              //solubility at 10 degree per 100 kg of water
a2=45;               //percentage of sodium nitrate in the solution per 100kg of solution 

x1=s1/(100+s1)*100;                //percentage of saturated solution at 50 degree
tw=(a2/(100-a2))/(x1/(100-x1));     //the  percentage saturation
printf("\nthe  percentage saturation is :%f percent",tw*100);

//part(ii)
//let x be the weight of NaNO3 crystal formed after crystallisation
x=poly([0],'x');        //calc. x the weight of crystal
t=roots((w1*a2/100)-(x+(w1-x)*s2/(100+s2)));             
printf("\n the weight of NaNO3 crystal formed after crystallisation :%f kg",t);

//part(iii)
yield=t/(a2*w1/100);          //yield = weight of NaNO3 crystal formed/weight of NaNO3
printf("\n the percentage yield is:%f percent",yield*100);
//end