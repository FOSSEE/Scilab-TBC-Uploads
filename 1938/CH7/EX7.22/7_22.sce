clc,clear
printf('Example 7.22\n\n')

//subscript 1 refers to load 1
I_1=18
phi_1=acos(0.8)
V_L=440
S_1=sqrt(3)*I_1*V_L /1000  //kVA for load 1
P_1=S_1*cos(phi_1)
Q_1=S_1*sin(phi_1)

P_out=6
eta_motor=88/100
P_2=P_out/eta_motor

P_T=P_1+P_2
phi_T=acos(1)  //total power factor angle
Q_T=P_T*tan(phi_T)

Q_2=  Q_T - Q_1   //kVAR supplied by motor
//this will have  a negative sign just indicating its leading nature 
phi_2=atan(abs(Q_2)/P_2)
pf=cos(phi_2)  //leading
S_2=P_2/cos(phi_2)  //kVA input to the motor
printf('kVA input to the motor is %.3f kVA \n',S_2)
printf('Power factor when driving a 6kW mechanical load is %.4f leading',pf)
