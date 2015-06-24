clc;
pathname=get_absolute_file_path('7_6_soln.sce')
filename=pathname+filesep()+'7_6_data.sci'
exec(filename)

// Solution:
// theoretical flow-rate,
Q_T=(V_D*10^-6)*(N/60); //m^3/s
Q_T=fix(Q_T)+(fix(ceil((Q_T-fix(Q_T))*10^5))/10^5); //m^3/s ,rounding off the answer
// volumetric efficiency,
eta_v=(Q_T/Q_A)*100; //%
// theoretical torque,
T_T=((V_D*10^-6)*(p*10^5))/(2*%pi); //Nm
// mechanical efficiency,
eta_m=(T_A/T_T)*100; //%
// overall efficiency,
eta_o=(eta_v/100)*(eta_m/100)*100; //%
eta_o=fix(eta_o)+(fix(floor((eta_o-fix(eta_o))*10))/10); //% ,rounding off the answer
// actual horsepower delivered by motor,
HP_A=(T_A*N*2*%pi)/(60*1000); //kW

// Results:
printf("\n  Results:  ")   
printf("\n The volumetric efficiency is %.1f percent.",eta_v)
printf("\n The mechanical efficiency is %.1f percent.",eta_m)
printf("\n The overall efficiency is %.1f percent.",eta_o)
printf("\n The actual horsepower delivered by the motor is %.1f kW.",HP_A)



