//Example 11_3
clc();
clear;
//To findout the amount of Ice that has to be added
m=200    //Units in gm
c=1      //Units in Cal/gm Centigrade
tf=60    //Units in Centigrade
to=98    //Units in Centigrade
change=m*c*(tf-to)     //units in Cal
tf=60 //Units in centigrade
to=0    //Units in centigrade
Hf=80    //Units in Cal/gm
change1=Hf+c*(tf-to)     //Units in Cal/gm
M=change/-(change1)
printf("The amount of ice that has to be added is M=%.1f gm",M)
