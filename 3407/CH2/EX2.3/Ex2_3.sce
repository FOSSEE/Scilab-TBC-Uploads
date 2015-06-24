clear all;
clc;
funcprot(0);

//given data
cp = 0.6;//coefficient of pressure
AR = 2.13;//Area ratio
N_R1 = 4.66;

//calculations
cpi = 1 - (1/(AR^2));
Diff_eff = cp/cpi;//diffuser efficiency
theta = 2*(180/%pi)*atan((AR^0.5 - 1)/(N_R1));//included cone angle

//Results
printf('cpi = %.2f.\n',cpi);
printf('The included cone angle can be found = %.2f deg.',theta);


