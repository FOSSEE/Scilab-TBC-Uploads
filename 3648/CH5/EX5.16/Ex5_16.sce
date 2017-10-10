//Example 5_16
clc();
clear;
//To find IMA AMA and Efficiency of the system
si=3
so=1
IMA=si/so
Fo=2000  //units in Newtons
Fi=800   //units in Newtons
AMA=Fo/Fi
effi=AMA/IMA*100
printf("IMA=%.2f\n",IMA)
printf("AMA=%.2f\n",AMA)
printf("Percentage of efficiency is %d percent",effi)
