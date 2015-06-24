//Calculate efficiency of transformer //Chapter 3
//Example 3.26
//page 234
clear;
clc;
disp("Example 3.26")
kVA=400;                    //rating of the transformer
ironloss=2;                //iron loss in kilowatt
pf=0.8;                     //power factor
kW=240;                    //load in kilowatt
kVA1=kW/pf;
disp("Efficiency is maximium when,core-loss=copper-loss")
coreloss=ironloss;
disp("Maximium efficiency occurs at 240kw,0.8 power factor,i.e., at 300kVA load")
Cl300=coreloss;
Cl400=(Cl300*(kVA/kVA1)^2);
pf1=0.71;            //power factor for full load
effi=(kVA*pf1*100)/((kVA*pf1)+coreloss+Cl400);
printf("\nEfficiency at full-load and 071 power factor=%dpercent",effi);
pf2=1                    //maximium efficiency occurs at unity power factor
MAXeffi=(kVA1*pf2*100)/((kVA1*pf2)+coreloss+Cl300)
printf("\nMaximium efficiency at 300kVA and unity power factor=%fpercent",MAXeffi);

