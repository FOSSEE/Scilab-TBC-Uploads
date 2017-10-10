//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_11.sce

clc;
clear;
//The input data are taken from the previous example 9.10

Pl=1e6;
Pd=360;   //developing power
Pi=600e3;
Vl=6600;
pf=0.1;
pf1=0.8;
Pin=800e3;
theta=acosd(pf);
Il=Pl/(Vl*sqrt(3));
Ps=(Pd*746)/0.9;          // 1HP=746 watt      and efficiency is assumed 90% (i.e 0.9)
phi_s=acosd(Ps/Pi);
Is=Pi/(Vl*sqrt(3));
lag_reactive_crt_motor=52.5;
lead_reacitve_crt_motor=lag_reactive_crt_motor*sind(acosd(pf));
active_crt=lag_reactive_crt_motor*pf;
lag_reactive_crt_result=lag_reactive_crt_motor-lead_reacitve_crt_motor;
resultant_active_crt=(Il*pf1)+(active_crt);

resultant_line_crt=sqrt(resultant_active_crt^2+lag_reactive_crt_result^2);
printf("\n  Resultant line current= %2.3f A \n",resultant_line_crt);

pf=resultant_active_crt/resultant_line_crt;
printf("\n  Power factor= %1.0f \n",pf)

increase_of_crt=(Il-resultant_active_crt)*100/Il;
printf("\n  The increase of current= %2.0f percentage \n",increase_of_crt)

increase_power_trans=(Pi*pf)*100/Pin;
printf("\n  The increase of power transmitted= %2.0f percentage",increase_power_trans)
