
clear;
clc;
printf("\t Example 7.2\n");

//part(i)
a1=229.7;              //solubility at 60 degree
a2=174.7;              //solubility at 60 degree
t1=68;                // percentage of sodium nitrate
t2=30.34;
x1=a1/329.7 *100;        //percentage of saturated solution at 50 degree
tw=(t1/32)/(x1/t2);    //the  percentage saturation
printf("\nthe  percentage saturation is :%f percent",tw*100);

//part(ii)
//let x be the weight of Cesium chloride crystal formed after crystallisation
x=poly([0],'x');        //calc. x the weight of crystal
t=roots(1000*.68-(x+(1000-x)*174.7/274.7));             
printf("\n the weight of CaCl2 crystal formed after crystallisation :%f kg",t);

//part(iii)
yield=t/680;          //yield = weight of CaCl2 crystal formed/weight of CaCl2
printf("\n the percentage yield of Cesium chloride  is:%f percent",yield*100);
//end