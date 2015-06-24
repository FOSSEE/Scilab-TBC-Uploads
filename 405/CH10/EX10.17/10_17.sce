clear;
clc;
printf("\t\t\tExample Number 10.17\n\n\n");
// transient response of thermal-energy storage system
// Example 10.17 (page no.-559-562)
// solution

Rinf = 0.176;// [degree celsius square meter/W] overall R value of material
A = 2.25;// [square meter] inlet flow area
l = 3;// [m] rock bed length
// properties of the rock are:
rho_r = 1281.4;// [kg/cubic meter]
Cr = 0.880;// [kJ/kg degree celsius]
kr = 0.87;// [W/m degree celsius]
Ti = 5;// [degree celsius] initial temperature of rock bed
Ta = 40;// [degree celsius] air temperature 
Tinf = Ta;// [degree celsius]
p = 101.325;// [kPa] pressure of air
Ts = 5;// [degree celsius] surrounding temperature
v1 = 0.3;// [m/s] inlet velocity 1
v2 = 0.9;// [m/s] inlet velocity 2
Cpa = 1.004;// [kJ/kg degree celsius]
R = 0.287;// [kJ/kg K] universal gas constant
// it can be seen that the axial energy conduction is small compared to the mass energy transport.
// for a 35 degree celsius temperature difference over a 0.6 length 
dx = l/5;// [m]
q_cond = kr*A*(Ta-Ti)/dx;// [W]                                                (a)
// the density of air at 40 degree celsius
rho_a = p/(R*(Ta+273));// [kg/cubic meter]                                     (b)
// and the mass flow rate at 0.3 m/s is 
mdot_a = rho_a*A*v1;// [kg/s]                                                    (c)
// the corresponding energy transport for a temperature difference of 35 degree celsius is 
q = mdot_a*Cpa*(Ta-Ti);// [kW]                                                   (d)
// and this is much larger than the value in equation (a).
// we now write an energy balance for one of the axial nodes as 
// energy transported in - energy transported out - energy lost to surroundings = rate of energy accumulation of node
// or mdot_a*Cpa*(Tm_o^(t)-Tm^(t)) - (Tm^(t)-Tinf)*P*dx/Rinf = rho_r*Cr*dVr*(Tm^(t+1)-Tm^(t))/dt                      (e)
// where the exit temperature from node m is assumed to be the rock temperatre of that node(Tm^(t)). equation (e) may be solved to give 
// Tm^(t+1) = F*mdot_a*Cpa*Tm_o^(t) + [1-F*(mdot_a*Cpa-P*dx/Rinf)]*Tm^(t) + F*P*dx*Tinf/Rinf                      (f)
// where
//          F = dt/(rho_r*Cr*dVr)
// here P is perimeter and dx is the increment.
P = 4*1.5;// [m]
// the stability requirement is such that the coefficient on the Tm^(t) terms cannot be negative. using dx = 0.6m, we find that the maximum value of 
dx = 0.6;// [m]
Fmax = 6.4495*10^(-4);
// which yields a maximum time increment of 
tmax = 0.54176;// [h]
// with a velocity of 0.9 m/s the maximum time increment for stability is
tmax_v2 = 0.1922;// [h]
// for the calculations we select the following values of dt with the resultant values of F:

// for v1
dt1 = 0.2;// [h]
F1 = 2.38095*10^(-4);
// for v2
dt2 = 0.1;// [h]
F2 = 1.190476*10^(-4);

// with the appropriate properties and these values inserted into equation(f) there results
// for v1
// Tm^(t+1) = F1*mdot_a*Cpa*Tm_o^(t) + [1-F1*(mdot_a*Cpa+P*dx/Rinf)]*Tm^(t) + F1*P*dx*Tinf/Rinf                    (g)
// for v2
// Tm^(t+1) = F2*mdot_a*Cpa*Tm_o^(t) + [1-F2*(mdot_a*Cpa+P*dx/Rinf)]*Tm^(t) + F2*P*dx*Tinf/Rinf                    (h)

// the energy storage relative to 5 degree celsius can then be calculated from 
E_t = 0;
i = 1;
T1 = 40;
T2 = 5;
T3 = 5;
T4 = 5;
T5 = 5;
    for i = 1:100
    T2 = (F2*mdot_a*Cpa*1000*T1 + [1-F2*(mdot_a*Cpa*1000-P*dx/Rinf)]*T2 + F2*P*dx*Tinf/Rinf);
    T3 = (F2*mdot_a*Cpa*1000*T2 + [1-F2*(mdot_a*Cpa*1000-P*dx/Rinf)]*T3 + F2*P*dx*Tinf/Rinf);
    T4 = (F2*mdot_a*Cpa*1000*T3 + [1-F2*(mdot_a*Cpa*1000-P*dx/Rinf)]*T4 + F2*P*dx*Tinf/Rinf);
    T5 = (F2*mdot_a*Cpa*1000*T4 + [1-F2*(mdot_a*Cpa*1000-P*dx/Rinf)]*T5 + F2*P*dx*Tinf/Rinf);
    Temp(i,:) = [T1 T2 T3 T4 T5];
    E_t = (dt1/F1)*[(T1-5)+(T2-5)+(T3-5)+(T4-5)+(T5-5)];
    val(i) = i;
    val1(i) = E_t;
    end

E_t = 0;
i = 1;
T1 = 40;
T2 = 5;
T3 = 5;
T4 = 5;
T5 = 5;
    for i = 1:100
    T2 = (F1*mdot_a*Cpa*1000*T1 + [1-F1*(mdot_a*Cpa*1000-P*dx/Rinf)]*T2 + F1*P*dx*Tinf/Rinf);
    T3 = (F1*mdot_a*Cpa*1000*T2 + [1-F1*(mdot_a*Cpa*1000-P*dx/Rinf)]*T3 + F1*P*dx*Tinf/Rinf);
    T4 = (F1*mdot_a*Cpa*1000*T3 + [1-F1*(mdot_a*Cpa*1000-P*dx/Rinf)]*T4 + F1*P*dx*Tinf/Rinf);
    T5 = (F1*mdot_a*Cpa*1000*T4 + [1-F1*(mdot_a*Cpa*1000-P*dx/Rinf)]*T5 + F1*P*dx*Tinf/Rinf);
    Temp(i,:) = [T1 T2 T3 T4 T5];
    E_t = (dt1/F1)*[(T1-5)+(T2-5)+(T3-5)+(T4-5)+(T5-5)];
    val2(i) = i;
    val3(i) = E_t;
    end
plot(val,val1,val2,val3);
legend("v = 0.3m/s","v = 0.9m/s");
xlabel("time(h)");
ylabel("E(t) kJ ");
printf("the result of the calculations are shown in the accompanying figure");

