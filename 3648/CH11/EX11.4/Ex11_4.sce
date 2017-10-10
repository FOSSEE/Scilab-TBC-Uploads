//Example 11_4
clc();
clear;
//To findout the specific heat capacity of the metal
m=400      //Units in gm
c=0.65       //Units in Cal/gm Centigrade
tf=23.1     //Units in Centigrade
to=18     //Units in Centigrade
oil=m*c*(tf-to)       //units in cal
m1=80      //Units in gm
tf=23.1     //Units in Centigrade
to=100     //Units in Centigrade
cm=m1*(tf-to)       //units in in terms of cm and gm Centigrade
cmm=oil/-cm          //Units in Cal/gm Centigrade
printf("The specific heat of metal is Cm=%.3f cal/gm C",cmm)
