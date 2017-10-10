//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_5.sce.

clc;
clear;
P=500e3;                             //KVA rating of the transformer
Vp=6600;                             //primary voltage in V
Vs=440;                              //secondary voltage in V
rp=0.45;                             //primary winding resistance in ohms
rs=0.0015;                          //secondary  winding resistance in ohms
iron_loss=2.9e3;
pf=0.8;                            //power factor lagging

//case1
printf("\n (a)")
Ip=P/Vp;                                   //primary current in A
Is=P/Vs;                                  //secondary current in A
Ip_square_rp=Ip^(2)*rp;                                   //primary copper loss
Is_square_rs=Is^(2)*rs;                                     //secondary  copper loss
FL_copper_loss=Ip_square_rp+Is_square_rs;                       //FL means "full load"
FL_total_loss=iron_loss+FL_copper_loss;
FL_output_power=P*pf;
FL_input_power=FL_output_power+FL_total_loss;
FL_efficiency=(FL_output_power/FL_input_power)*100;
printf("\n  Full load efficiency=%2.2f percentage \n",FL_efficiency)

//case2
printf("\n (b)")
HL_copper_loss=FL_copper_loss*(0.5^2);                                   //HL means "half load"
HL_total_loss=iron_loss+HL_copper_loss;
HL_output_power=FL_output_power/2;
HL_input_power=HL_output_power+HL_total_loss;
HL_efficiency=(HL_output_power/HL_input_power)*100;
printf("\n  Half load efficiency=%2.4f percentage \n",HL_efficiency)
