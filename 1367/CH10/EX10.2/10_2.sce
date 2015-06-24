//Calculate Total weight of lead and tin
//Exa:10.2
close;
clc;
clear;
p_pb=11364.1;//density of lead in kg/m^3
p_sn=7220.14;//density of tin in kg/m^3
p_e=100/((38/p_pb)+(62/p_sn));//density of eutectic composition at point D
disp(p_e,"Density of eutectic composition at point D (in kg/m3) = ");
w=.88*p_e;//in kgf
w_pb=.38*w;//of lead in kgf
w_sn=.62*w;//of tin in kgf
p_b=7300;//density in beta phase in kg/m^3
w1=.12*p_b;//in kgf
w1_pb=.03*w1;//of lead in kgf
w1_sn=.97*w1;//of tin in kgf
w2_pb=w_pb+w1_pb;//Total weight of lead in kgf
disp(w2_pb,"Total weight of lead (in kgf) = ");
w2_sn=w_sn+w1_sn;//Total weight of tin in kgf
disp(w2_sn,"Total weight of tin (in kgf) = ");
sn=(w2_sn/(w2_sn+w2_pb))*100;
disp(sn,"% of Sn = ");