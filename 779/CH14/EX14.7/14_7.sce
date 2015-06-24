T1 = 277; T3 = 273+55;
rp = 3; // Pressure ratio
g = 1.4; cp = 1.005;
T2s = T1*(rp^((g-1)/g));
T2 = T1+(T2s-T1)/0.72
T4s = T3/(rp^((g-1)/g));
T34 = 0.78*(T3-T4s); // T3-T4
T4 = T3-T34;
COP = (T1-T4)/((T2-T1)-(T3-T4));
disp(COP,"COP of the refrigerator is")
P = (3*14000)/(COP*3600)
disp("kW",P,"Driving power required is")
m = (3*14000)/(cp*(T1-T4));
disp("kg/s",m/3600,"Mass flow rate is")
