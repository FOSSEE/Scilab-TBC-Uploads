clc
//ex15.11
V_s=1000*complex(cos(0),sin(0));      //source voltage phasor
R_1=10^3;
R_L=10;
Z_L_1=R_L+%i*20;      //impedance
tr=10;      //turns ratio(N1/N2)
Z_L_2=(tr^2)*Z_L_1;      //reflecting Z_L_1 onto primary side
Z_s=R_1+Z_L_2;      //total impedance seen by the source 
[Z_s_max,Z_s_phi]=polar(Z_s);
//primary quantities
I_1=V_s/Z_s;
[I_1_max,I_1_phi]=polar(I_1);
V_1=I_1*Z_L_2;
[V_1_max,V_1_phi]=polar(V_1);
//using turns ratio to find secondary quantities
I_2=tr*I_1;
[I_2_max,I_2_phi]=polar(I_2);
V_2=V_1/tr;
[V_2_max,V_2_phi]=polar(V_2);
I_2_rms=I_2_max/sqrt(2);
P_L=(I_2_rms^2)*R_L;      //power to load
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
//we take real parts of angles to take out neglegible and unnecessary imaginary parts(if any are there)
disp('PRIMARY CURRENT:')
disp(I_1_max,'peak value in amperes')
disp(real(I_1_phi*180/%pi),'phase angle in degrees')
disp('PRIMARY VOLTAGE:')
disp(V_1_max,'peak value in amperes')
disp(real(V_1_phi*180/%pi),'phase angle in degrees')
disp('SECONDARY CURRENT')
disp(I_2_max,'peak value in amperes')
disp(real(I_2_phi*180/%pi),'phase angle in degrees')
disp('SECONDARY VOLTAGE')
disp(V_2_max,'peak value in amperes')
disp(real(V_2_phi*180/%pi),'phase angle in degrees')
disp(P_L,'power delivered to load in watts')
