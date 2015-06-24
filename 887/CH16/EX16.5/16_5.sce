clc
//ex16.5
n_m_1=1200;      //speed in rpm
T_out_1=12;      //motor torque
W_m_1=n_m_1*2*%pi/60;      //angular speed
//As we are neglecting losses, the output torque and power are equal to the developed torque and power respectively
P_out_1=W_m_1*T_out_1;      //output power
//For Torque=24
T_out_2=24;
T_dev_2=T_out_2;
//T_dev=K*K_F*V_T^2/(R_A+R_F+K*K_F*W_m^2)
//neglecting resistances and with the above equation for T_dev, we get inverse relation between torque and square of speed
W_m_2=W_m_1*sqrt(T_out_1)/sqrt(T_dev_2);
n_m_2=W_m_2*60/(2*%pi);
P_out_2=T_dev_2*W_m_2;
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(P_out_1,'Output power for load torque=12 in watts')
disp(n_m_2,'speed for torque=24 in rpm')
disp(P_out_2,'Output power for load torque=24 in watts')
