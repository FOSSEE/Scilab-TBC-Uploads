// Example 7.10
// Calculation of Wattmeter Readings
// Assuming phase_a= 0;
V_ab_m= 780; // Line voltage
phase_ab= 30; // in degree
I_a_m=30; // in Amphere
phase_a=-36.9;//in degree
V_cb_m= 780;
phase_cb=90;
I_c_m=30;
phase_c=83.1;
x_ab=V_ab_m*cos(phase_ab*(%pi/180))
y_ab=V_ab_m*sin(phase_ab*(%pi/180))
V_ab=complex(x_ab,y_ab); // Line voltage a-b in rectangular form
x_a=I_a_m*cos(phase_a*(%pi/180))
y_a=I_a_m*sin(phase_a*(%pi/180))
I_a=complex(x_a,y_a); // Line current in rectangular form
x_cb=V_cb_m*cos(phase_cb*(%pi/180))
y_cb=V_cb_m*sin(phase_cb*(%pi/180))
V_cb=complex(x_cb,y_cb);
x_c=I_c_m*cos(phase_c*(%pi/180))
y_c=I_c_m*sin(phase_c*(%pi/180))
I_c=complex(x_c,y_c);
P_1=real(V_ab*I_a');
P_2=real(V_cb*I_c');
// So
P=P_1+P_2;
Q=sqrt(3)*abs(P_2-P_1);
disp(P,"Total Average power supplied by generator(in Watts)=")
disp(Q,"Reactive power supplied by the generator(in VAr)=")
