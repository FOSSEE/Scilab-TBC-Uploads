
clear;
clc;
close;
clf;
length1=[100 120 170 220];
resistance=[2.5 3 4.25 5.5];
plot(length1,resistance,'b--.diam')
xtitle("Relation between Resistances and Length","length_in_meters","resistance_in_ohms");
xgrid;
length1=200;
resistance=5;
plot('length','resistance','b.diam')
plot(250,6.21,'b.diam')//this point is called extrapolation 

     
     
