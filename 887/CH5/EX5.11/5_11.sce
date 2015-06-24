clc
//ex5.11
//thevenin voltage
V_t_max=100;
V_t_phi=-%pi/2;
V_t=complex(V_t_max*cos(V_t_phi),V_t_max*sin(V_t_phi));
//thevenin resistance
Z_t_max=70.71;
Z_t_phi=-%pi/4;
Z_t=complex(Z_t_max*cos(Z_t_phi),Z_t_max*sin(Z_t_phi));
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
//a) Any complex load
disp('FOR ANY COMPLEX LOAD')
Z_load=Z_t';
I_a=V_t/(Z_t+Z_load);      //ohm's law
I_a_rms=I_a/sqrt(2);      //rms value
P_1=abs(I_a_rms)^2*real(Z_load);      //power
disp(Z_load,'required complex load impedance')
disp(P_1,'power delivered to load in watts')
//b) purely resistive load
disp('FOR PURE RESISTIVE LOAD')
R_load=abs(Z_t);
I_b=V_t/(Z_t+R_load);
I_b_rms=I_b/sqrt(2);
P_2=abs(I_b_rms)^2*R_load;
disp(R_load,'required pure resistive load')
disp(P_2,'power delivered to load')
