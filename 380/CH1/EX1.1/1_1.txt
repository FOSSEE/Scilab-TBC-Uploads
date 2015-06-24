// Caption:finding the max power delivered
//Exa:1.1
close;
clc;
clear;
//on applying KVL we get 
i=75/50;//in Amperes
v_th=(30*i)+25;//Equivalent Thevenin voltage (in Volts)
r_th=(20*30)/(20+30);//Equivalent thevenin resistance (in Ohms)
R_load=r_th;//Load resistance=thevenin resistance (in Ohms)
disp(R_load,'load resistance (in ohms)=') //in ohms
i_load=v_th/(r_th+R_load);//in Amperes
p_max=(i_load^2)*r_th;//in Watts
disp(p_max,'max power (in watts)=')//maximum power dissipiated 