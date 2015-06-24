clc;
pathname=get_absolute_file_path('7_7_soln.sce')
filename=pathname+filesep()+'7_7_data.sci'
exec(filename)

// Solution:
// pump theoretical flow-rate,
Q_T_pump=(V_D_pump*10^-6)*(N_pump/60); //m^3/s
// pump actual flow rate,
Q_A_pump=Q_T_pump*(eta_v_pump/100); //m^3/s
// motor theoretical flow-rate,
Q_T_motor=Q_A_pump*(eta_v_motor/100); //m^3/s ,motor actual flow-rate = pump actual-flow rate
// motor displacement,
V_D_motor=(Q_T_motor/(N_motor/60))*10^6; //cm^3
// hydraulic HP delivered to motor,
HHP_motor=(p*10^5)*Q_A_pump; //W
// brake HP delivered by motor,
BHP_motor=HHP_motor*(eta_v_motor/100)*(eta_m_motor/100); //W
BHP_motor=fix(BHP_motor)+(fix(floor((BHP_motor-fix(BHP_motor))*100))/100); //W ,rounding off the answer
// torque delivered by motor,
T_motor=(BHP_motor/N_motor)*(60/(2*%pi)); //Nm

// Results:
printf("\n  Results:  ")   
printf("\n The Displacement of motor is %.1f cm^3.",V_D_motor)
printf("\n The Motor output torque is %.1f Nm.",T_motor)





