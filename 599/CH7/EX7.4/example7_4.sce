
clear;
clc;
printf("\t Example 7.4\n");
//part(i)
a1=146;                //solubility at 70 degree
a2=121;                //solubility at 10 degree
t1=58;                 // percentage of solute content
t2=40.66;
x1=a1/(100+a1) *100;        //percentage of saturated solution at 50 degree
tw=(t1/42)/(x1/t2);    //the  percentage saturation
printf("\nthe  percentage saturation is :%f percent",tw*100);

//part(ii)
p1=2000*.58;              //weight of solute in 200kg of solution 2000*.58
//let x be the weight of  crystal formed after crystallisation
x=poly([0],'x');         //calc. x the weight of crystal
t=roots((1160)-(x+(1055.02-.547*x)));             
printf("\n the weight of NaNO3 crystal formed after crystallisation :%f kg",t);

//part(iii)
yield=t/p1;            //yield = weight of NaNO3 crystal formed/weight of NaNO3
printf("\n the percentage yield is:%f percent",yield*100);
//end