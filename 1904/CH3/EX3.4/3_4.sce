//To determine the maximum load carried by the transformer
//Page 122
clc;
clear;

//Transformer Ratings in kVA
Sr1=250; 
Sr2=500;

//percentage impedances
Zr1=2.4;
Zr2=3.1;

//Ratio of Maximum Loads
R=Sr1*Zr2/(Sr2*Zr1);

//If 500 kVA is chosen as the full load transformer, Transformer 1 becomes overloaded
SL1=Sr1; //To Avoid OverLoading of transformer 1

SL2=SL1/R; //Maximum Load on transformer 2

Tl=SL1+SL2; //Total Load without overloading

printf('The Maximum Load Carried without overloading any of the transformer is %g kVA\n',Tl)
