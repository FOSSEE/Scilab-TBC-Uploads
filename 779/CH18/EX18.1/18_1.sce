T2 = 488; T1 = 298; n = 1.3; R =8314/44;
rp = (T2/T1)^(n/(n-1));
disp(rp,"Pressure ratio is")
b = 0.12; // Bore of compressor
L = 0.15; // Stroke of compressor
V1 = (%pi/4)*(b)^2*L ; 
P1 = 120e03; // in kPa
W = ((n*P1*V1)/(n-1))*(((rp)^((n-1)/n))-1);
P = (W*1200*0.001)/60 ; 
disp("kW",P,"Indicated power is")
disp("kW",P/0.8,"Shaft power is")
V1_dot = V1*(1200/60);
m_dot = (P1*V1_dot)/(R*T1);
disp("kg/s",m_dot,"Mass flow rate is")
rp_1 = rp^2;
disp(rp_1,"Pressure ratio when second stage is added is")
V2 = (1/rp)^(1/n)*V1;
disp("m3",V2,"Volume derived per cycle is V2")
d = sqrt((V2*4)/(L*%pi));
disp("mm",d*1000,"Second stage bore would be")
