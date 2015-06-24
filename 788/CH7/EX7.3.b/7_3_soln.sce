clc;
pathname=get_absolute_file_path('7_3_soln.sce')
filename=pathname+filesep()+'7_3_data.sci'
exec(filename)

// Solution:
// theoretical flow-rate,
Q_T=V_D*N/231; //gpm
// volumetric efficiency,
eta_v=(Q_T/Q_A)*100; //%
// theoretical torque,
T_T=(V_D*p/(2*%pi)); //in.lb
// mechanical efficiency,
eta_m=(T_A/T_T)*100; //%
// overall efficiency,
eta_o=(eta_v/100)*(eta_m/100)*100; //%
eta_o=fix(eta_o)+(fix(floor((eta_o-fix(eta_o))*10))/10); //% ,rounding off the answer
// actual horsepower delivered by motor,
HP_A=T_A*N/63000; //HP

// Results:
printf("\n  Results:  ")   
printf("\n The volumetric efficiency is %.1f percent.",eta_v)
printf("\n The mechanical efficiency is %.1f percent.",eta_m)
printf("\n The overall efficiency is %.1f percent.",eta_o)
printf("\n The actual horsepower delivered by the motor is %.1f HP.",HP_A)



