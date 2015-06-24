//Exa:1.1
clc;
clear;
close;
C_g=60000;//in Rs
D=0.12*C_g;//in Rs
E_c=75000;//in kWh
C_e=4*E_c;//in Rs
C_t=D+C_e;//in Rs
C_id=18750*10;//in Rs
AD=0.15*C_id;//in Rs
E_a=60000;//in kWh
C_ea=4*E_a;//in Rs
C_total=AD+C_ea;//in Rs
disp(C_t,'Total annual cost in case of group drive (in Rs)=');
disp(C_total,'Total annual cost in case of individual drive (in Rs)=');