clear all;
clc;
funcprot(0);

//given data
AR = 1.8;//Area ratio
cp = 0.6;//coefficient of pressure
N_R1 = 7.85;

//calculations
Theta = 2*(180/%pi)*atan((AR^0.5 - 1)/(N_R1));//included cone angle
cpi = 1-(1/(AR^2));
Diff_eff = cp/cpi;//diffuser efficeincy

//Results
printf('The included cone angle can be found = %.1f deg.\n',Theta);
printf('cpi = %.2f.\n',cpi);
printf('Diffuser efficiency = %.2f.',Diff_eff);
