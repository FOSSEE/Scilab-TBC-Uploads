
clear;
clc;
printf("\t Example 5.3\n");
//part(i)
pt=800;                    //total pressure in mmHg
pa=190;                    //vapour pressure of acetone at 25 degree 
ys_bar=pa*(58/28)/(pt-pa)   //
//percentage saturation = y_bar/ys_bar *100
s=80;                      //percent saturation
y_bar=ys_bar*s/100;        //absolute humidity
printf("\n the absolute humidity is \t :%f kg acetone/kmol N2 ",y_bar);

//part(ii)
//y_bar=pa*(58/28)/(pt-pa) 
pa1=pt*y_bar*(28/58)/(1+(y_bar*(28/58)));
printf("\n the partial pressure of acetone is:%f mmHg",pa1);

//part(iii)
y=pa1/(pt-pa1);              //absolute molal humidity
printf("\n absolute molal humidity \t:%f kmol acetone/kmol N2",y);

//part(iv)
//volume of .249kmol acetone vapour at NTP =.249*22.14
//p1v1/T1 =p2v2/T2
p2=800;                    //final pressure of acetone and nitrogen at 25 degree
p1=760;                    //initial pressure of acetone and nitrogen at 25 degree
T2=298;                    //final temperature of acetone and nitrogenat 25 degree
T1=273;                   //initial temperature of acetone and nitrogen at 25 degree
vA1=5.581;                    //initial volume of acetone at 25 degree
vN1=22.414;                   //initial volume of nitrogen at 25 degree 
vA2=T2*vA1*p1/(T1*p2);        //final volume of acetone at 25 degree
vN2=T2*vN1*p1/(T1*p2);        //final volume of nitrogen at 25 degree
vtotal=vA2+vN2;            //total volume of the mixture
vper=vA2*100/vtotal;           //percentage volume of acetone
printf("\n the percentage volume of acetone is :%f m^3",vper);
//end