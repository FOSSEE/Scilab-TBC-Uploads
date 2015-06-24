clc
//ex5.6
V_s_max=2;      //peak value of source voltage
V_s_phi=-%pi/2;      //phase angle of source voltage
V_s=complex(V_s_max*cos(V_s_phi),V_s_max*sin(V_s_phi));
R=10;
Z_C=-%i*5;      //impedance of capacitance
Z_L=%i*10;      //impedance of inductance
I_s_max=1.5;      //peak value of current source
I_s_phi=0;      //phase angle of current source
I_s=complex(I_s_max*cos(I_s_phi),I_s_max*sin(I_s_phi));
//we write the standard equations of V_1 and V_2 in matrix form
//from node-voltage relation
A=[0.1+%i*0.2,-%i*0.2;-%i*0.2,%i*0.1];      //coefficient matrix
B=[-%i*2;1.5];      //constant matrix
//As in A*X=B form
V=inv(A)*B;
V_1=sqrt((real(V(1,:)))^2+(imag(V(1,:)))^2);      //peak value of V_1
V_1_phi=atan(imag(V(1,:))/real(V(1,:)));      //phase angle of V_1
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(V_1,'peak value of V1 in volts')
disp(V_1_phi*180/%pi,'phase angle of V1 in degrees')
