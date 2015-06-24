clc;
pathname=get_absolute_file_path('9_5_soln.sce')
filename=pathname+filesep()+'9_5_data.sci'
exec(filename)

// Solution:
// acceleration due to gravity,
g=32.2; //ft/s^2
// pump's theoretical flow-rate,
Q_T_pump=(V_D_pump*Np)/231; //gpm
// pump's actual flow-rate,
Q_A_pump=(Q_T_pump*eff_v_pump)/100; //gpm
// velocity of oil,
v=((Q_A_pump)/449)/((%pi*((D/12)^2))/4); //ft/s
// Reynolds number,
N_R=(7740*v*D)/nu; 
// friction factor,
f=64/N_R; 
// equivalent length of 90 deg standard elbow,
Le_elbow=(K_elbow*(D/12))/f; //ft
// equivalent length of check valve,
Le_check_valve=(K_check*(D/12))/f; //ft
// total length of pipe,
LeTOT=L_pipe+(2*Le_elbow)+Le_check_valve; //ft
// head loss due to friction,
H_L=(f*LeTOT*(v^2))/(2*g*(D/12)); //ft
// head developed due to hydraulic motor and pump,
Hp=0; //ft
Hm=0; //ft
// height difference between station 1 and station 2,
Z=20; //ft
// pump discharge pressure,
p1=(((Z+H_L+Hm+Hp)*SG*62.4)/144)+p2; //psi
// input HP required to drive pump,
HP_pump=((p1-pi)*Q_A_pump)/(1714*(eff_m_pump/100)*(eff_v_pump/100)); //Hp
// motor theoretical power,
Q_T_motor=Q_A_pump*(eff_v_motor/100); //gpm
// speed of motor,
N_motor=floor((Q_T_motor*231)/V_D_motor); //rpm
// motor input horsepower,
HP_input_motor=((p2-po)*Q_A_pump)/1714; //HP
// rounding off the above answer
HP_input_motor=fix(HP_input_motor)+(fix(ceil((HP_input_motor-fix(HP_input_motor))*10))/10); //HP
// motor output horsepower,
HP_output_motor=(HP_input_motor*(eff_m_motor/100)*(eff_v_motor/100)); //HP
// motor output torque,
T_output_motor=(HP_output_motor*63000)/N_motor; //in.lb
// overall efficiency of system,
eff_overall=(HP_output_motor/HP_pump)*100; //%
// rounding off the above answer
eff_overall=fix(eff_overall)+(fix(ceil((eff_overall-fix(eff_overall))*10))/10); //%

// Results:
printf("\n  Results:  ")   
printf("\n The Pump flow-rate is %.1f gpm.",Q_A_pump)
printf("\n The Pump discharge pressure is %.0f psi.",p1)
printf("\n The Input HP required to drive the pump is %.1f HP.",HP_pump)
printf("\n The Motor Speed is %.0f rpm.",N_motor)
printf("\n The Motor output torque is %.0f in.lb.",T_output_motor)
printf("\n The Overall efficiency of system is %.1f percent.",eff_overall)
