clc
//ex5.13
Z_line=complex(0.3,0.4);      //impedance of wire
Z_d=complex(30,6);      //load impedance
R=real(Z_d);
R_line=real(Z_line);
//source voltages
V_ab=complex(1000*cos(%pi/6),1000*sin(%pi/6));
V_bc=complex(1000*cos(-%pi/2),1000*sin(-%pi/2));
V_ca=complex(1000*cos(5*%pi/6),1000*sin(5*%pi/6));
//choosing A phase of wye-equivalent circuit
V_an=V_ab/(sqrt(3)*complex(cos(%pi/6),sin(%pi/6)));
Z_Y=Z_d/3;
I_aA=V_an/(Z_line+Z_Y);      //line current
I_aA_rms=abs(I_aA)/sqrt(2);
V_An=I_aA*Z_Y;      //line to neutral voltage
V_AB=V_An*sqrt(3)*complex(cos(%pi/6),sin(%pi/6));      //line to line voltage at the load
I_AB=V_AB/Z_d;      //current through phase AB
I_AB_rms=abs(I_AB)/sqrt(2);      //rms value
P_AB=I_AB_rms^2*R;      //power delivered to phase AB
//power delivered in other two phases is same
P=3*P_AB;      //total power
P_A=I_aA_rms^2*R_line;      //power lost in line A
//power lost in other two lines is same
P_line=3*P_A;
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp('LINE CURRENTS')
disp(I_aA,'IaA=')
disp(I_aA*complex(cos(-2*%pi/3),sin(-2*%pi/3)),'IbB=')
disp(I_aA*complex(cos(2*%pi/3),sin(2*%pi/3)),'IcC=')
disp('LINE-LINE VOLTAGES')
disp(V_AB,'VAB=')
disp(V_AB*complex(cos(-2*%pi/3),sin(-2*%pi/3)),'VBB=')
disp(V_AB*complex(cos(2*%pi/3),sin(2*%pi/3)),'VCC=')
disp(P,'power delivered to load in watts')
disp(P_line,'total power dissipated in the line')
