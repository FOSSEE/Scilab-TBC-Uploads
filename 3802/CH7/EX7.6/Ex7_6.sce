//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_6.sce.

clc;
clear;
//the given data are taken from previous example(Ex7_5)

Vp=6600;                                        //primary voltage in V
Vs=440;                                     //secondary voltage in V
rp=0.45;                                   //primary winding resistance in ohms
rs=0.0015;                               //secondary  winding resistance in ohms
Wi=2.9e3;                                 //iron loss in watt
pf=0.8;                                    //power factor lagging

Re=rp+(Vp/Vs)^2*rs;                     //equivalent resistance referred to primary
Ip=sqrt(Wi/Re);
P_max=Vp*Ip*pf;
total_loss=2*Wi;
Max_efficiency=(P_max/(P_max+total_loss))*100;
printf("\n  Maximum Efficiency=%2.2f percentage \n",Max_efficiency)
