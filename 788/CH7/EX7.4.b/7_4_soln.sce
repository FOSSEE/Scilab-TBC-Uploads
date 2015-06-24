clc;
pathname=get_absolute_file_path('7_4_soln.sce')
filename=pathname+filesep()+'7_4_data.sci'
exec(filename)

// Solution:
// pump theoretical flow-rate,
Q_T_pump=V_D_pump*N_pump/231; //gpm
// pump actual flow rate,
Q_A_pump=Q_T_pump*(eta_v_pump/100); //gpm
// motor theoretical flow-rate,
Q_T_motor=Q_A_pump*(eta_v_motor/100); //gpm ,motor actual flow-rate = pump actual flow rate
// motor displacement,
V_D_motor=Q_T_motor*231/N_motor; //in^3
// hydraulic HP delivered to motor,
HHP_motor=p*Q_A_pump/1714; //HP
// brake HP delivered by motor,
BHP_motor=HHP_motor*(eta_v_motor/100)*(eta_m_motor/100); //HP
BHP_motor=fix(BHP_motor)+(fix(floor((BHP_motor-fix(BHP_motor))*100))/100); //HP ,rounding off the answer
// torque delivered by motor,
T_motor=(BHP_motor*63000/N_motor); //in.lb

// Results:
printf("\n  Results:  ")   
printf("\n The Displacement of motor is %.2f in^3.",V_D_motor)
printf("\n The Motor output torque is %.0f in.lb.",T_motor)





