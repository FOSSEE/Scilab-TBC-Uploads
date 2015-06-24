//Calculate efficiency of transformer //Chapter 3
//Example 3.29
//page 236
clear;
clc;
disp("Example 3.29")
kVA=50;                    //rating of the transformers
I1=250;                    //primary current in amperes
Re=0.006;                  //total resistance referred to the primary side
ironloss=200;                //iron loss in watt
Culoss=(I1^2*Re);           //copper loss in watt
pf=0.8;                      //power factor lagging
printf("Full-load copper loss=%fW",Culoss);
TL1=((Culoss+ironloss)/1000);         
printf("\nTotal loss on full load=%fkW",TL1);
TL2=((((Culoss*(1/2)^2))+ironloss)/1000)
printf("\nTotal loss on half load=%fkW",TL2);
effi1=(kVA*pf*100)/((kVA*pf)+TL1);
printf("\nEfficiency at full load,0.8 power factor lagging=%f percent",effi1)
effi2=((kVA/2)*pf*100)/(((kVA/2)*pf)+TL2);
printf("\nEfficiency at half load,0.8 power factor lagging=%f percent",effi2)

