//Calculate efficiency of transformer //Chapter 3
//Example 3.27
//page 235
clear;
clc;
disp("Example 3.27")
kVA=40;                    //rating of the transformer
coreloss=450;               //core-loss in watts
Culoss=800;                 //copper loss in watt
pf=0.8;                     //power factor of the load
FLeffi=(kVA*pf*100)/((kVA*pf)+((coreloss+Culoss)/1000));
printf("Full-load efficiency=%fpercent",FLeffi);
disp("For maximium efficiency, Core loss=copper loss")
Culoss2=coreloss;            //for maximium efficiency
n=sqrt(Culoss2/Culoss);
kVA2=n*kVA;                  //load for maximium efficiency
MAXeffi=(kVA2*pf*100)/((kVA2*pf)+((coreloss+Culoss2)/1000));
printf("\nValue of maximium efficiency=%fpercent",MAXeffi);

