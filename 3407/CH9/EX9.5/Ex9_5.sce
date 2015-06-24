clear;
clc;
funcprot(0);

//given data
k = 1/5;//scale ratio
Pm = 3;//in kW
Hm = 1.8;//in m
Nm = 360;//in rev/min
Qm = 0.215;//in m^3/s
Hp = 60;//in m
n = 0.25;
rho = 1000;//in kg/m^3
g = 9.81;//in m/s^2

//Calculations
Np = Nm*k*(Hp/Hm)^0.5;
Qp = Qm*(Nm/Np)*(1/k)^3;
Pp = Pm*((Np/Nm)^3)*(1/k)^5;
eff_m = Pm*1000/(rho*Qm*g*Hm);
eff_p = 1 - (1-eff_m)*0.2^n;
Pp_corrected = Pp*eff_p/eff_m;

//Results
printf('The speed = %.1f rev/min.',Np);
printf('\n The flow rate = %.2f m^3/s.',Qp);
printf('\n Power of the full-scale = %.2f MW.',Pp/1000);
printf('\n The efficiency of the model turbine = %.2f.',eff_m);
printf('\n The efficiency of the prototype = %.4f.',eff_p);
printf('\n The power of the full-size turbine = %.1f MW.',Pp_corrected/1000);
