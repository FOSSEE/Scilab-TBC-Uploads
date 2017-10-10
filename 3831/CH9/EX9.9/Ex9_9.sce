// Example 9_9
clc;funcprot(0);
// Given data
gamma=0.500;// The specific heat ratio for air
T_in=70.0;// °F
p_in_psig=[0.000,20.00,40.00,60.00,80.00,100.00,120.00,140.00];// psig
p_in=[14.7,34.7,54.7,74.7,94.7,114.7,134.7,154.7];// psia
T_hot=[70.0,119.0,141.0,150.0,156.0,161.0,164.0,166.0];// °F
T_cold=[70.0,19.5,-3.00,-14.0,-22.0,-29.0,-34.0,-39.0];// °F
T_r=[1.000,1.209,1.315,1.368,1.406,1.441,1.465,1.487];// Note:T_r=(T_hot+460)/(T_cold+460)
p_e=14.7;// The exit pressure in psia
R=0.0685;// Btu/(lbm.R)
c_p=0.240;// Btu/(lbm.R)

// Calculation
Sdot_pbymdot_3_1=((c_p*log(((T_r(1)^gamma)/(1+(gamma*(T_r(1)-1))))))+(R*log(p_in(1)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_2=((c_p*log(((T_r(2)^gamma)/(1+(gamma*(T_r(2)-1))))))+(R*log(p_in(2)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_3=((c_p*log(((T_r(3)^gamma)/(1+(gamma*(T_r(3)-1))))))+(R*log(p_in(3)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_4=((c_p*log(((T_r(4)^gamma)/(1+(gamma*(T_r(4)-1))))))+(R*log(p_in(4)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_5=((c_p*log(((T_r(5)^gamma)/(1+(gamma*(T_r(5)-1))))))+(R*log(p_in(5)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_6=((c_p*log(((T_r(6)^gamma)/(1+(gamma*(T_r(6)-1))))))+(R*log(p_in(6)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_7=((c_p*log(((T_r(7)^gamma)/(1+(gamma*(T_r(7)-1))))))+(R*log(p_in(7)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3_8=((c_p*log(((T_r(8)^gamma)/(1+(gamma*(T_r(8)-1))))))+(R*log(p_in(8)/p_e)));// Btu/(lbm.R)
Sdot_pbymdot_3=[Sdot_pbymdot_3_1,Sdot_pbymdot_3_2,Sdot_pbymdot_3_3,Sdot_pbymdot_3_4,Sdot_pbymdot_3_5,Sdot_pbymdot_3_6,Sdot_pbymdot_3_7,Sdot_pbymdot_3_8];// Btu/(lbm.R)
plot(p_in_psig,Sdot_pbymdot_3);
xlabel('Inlet pressure(psig)');
ylabel('Sdot_p/mdot_3(Btu/lbm.R)');
xtitle('Sdot_p/mdot_3 vs. inlet pressure for a vortex tube');
disp('Remaining Results for Example 9.9');
disp('The entropy production rate per unit mass flow rate for each pressure shown');
disp('Inlet pressure psig');
disp(p_in_psig);
disp('T_1/T_2');
disp(T_r);
disp('Sdot_P/mdot_3 Btu/(lbm⋅R)');
disp(Sdot_pbymdot_3);
