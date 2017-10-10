//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_10.sce.

clc;
clear;
Pl=1e6;
Pd=360;   //developing power
Pi=600e3;
Vl=6600;
pf=0.8;
Pin=800e3;
theta=acosd(pf);
Il=Pl/(Vl*sqrt(3));
Ps=(Pd*746)/0.9;          // 1HP=746 watt      and efficiency is assumed 90% (i.e 0.9)
phi_s=acosd(Ps/Pi);
Is=Pi/(Vl*sqrt(3));
lag_reactive_crt_load=Il*sind(theta);
lead_reacitve_crt_motor=lag_reactive_crt_load*sind(phi_s);
lag_reactive_crt_result=lag_reactive_crt_load-lead_reacitve_crt_motor;
resultant_active_crt=(Il*pf)+(lag_reactive_crt_load*cosd(phi_s));

resultant_line_crt=sqrt(resultant_active_crt^2+lag_reactive_crt_result^2);
printf("\n  Resultant line current=%2.2f A \n",resultant_line_crt);

final_power_factor=resultant_active_crt/resultant_line_crt;
printf("\n  Final power factor=%1.0f \n",final_power_factor);

increase_of_crt=(resultant_line_crt-Il)*100/Il;
printf("\n  The increase of current=%2.1f percentage \n",increase_of_crt)

increase_power_trans=((Pin+Ps)-Pin)*100/Pin;
printf("\n  The increase of power transmitted=%2.1f percentage \n",increase_power_trans)
