//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_9.sce.

clc;
clear;
Vp=220;                                          //primary voltage in V
Vs=250;                                          //secondary voltage in V
Ns=2000;                                          //number of secondary turns

printf("\n (a)")
Np=(Vp/Vs)*Ns;                                  //number of Primary turns
tapping_point=Ns-Np;                           //number of turns from C to A in figure
printf("\n  The position of tapping point=%d turns \n",tapping_point)

printf("\n (b)")
Po=10e3;                                    //output power in KVA
Is=Po/Vs;                                     //secodary current in A
Ip=(Vs/Vp)*Is;                               //primary current in A
approximate_current=Ip-Is;
printf("\n  The approximate value of current in each part of the winding:\n")
printf("\t Is=%d A\n",Is)
printf("\t Ip=%2.2f A\n",Ip)
printf("\t Ip-Is=%1.2f A\n",approximate_current)

printf("\n (c)")
copper_saved=Vp/Vs;
printf("\n  copper saved=%1.2f p.u",copper_saved)

