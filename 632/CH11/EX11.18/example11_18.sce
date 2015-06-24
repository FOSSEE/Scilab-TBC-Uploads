//clc()
//Cp = 0.16 + 4.78 * (10^-3) * T ( organic liquid )
//Cp = 0.7935 + 1.298 * (10^-4) * T ( CCL4 )
Tb = 349.9;//K
Hv = 195;//kJ/kg
Cp = 0.4693;//kJ/kgK
//Let T be the final temperature
//integration(T - 650)(0.16 + 4.78 * (10^-3) * T)dt = integration(295 - T)(0.7935 + 1.298 * (10^-4) * T)dt
// the above equation yields, 2.4549*(10^-3)*T^2 + 0.9535*T - 1353.51 = 0, from this we get
T = 573.3;//K
//since this temperature is above boiling point of CCl4,
//heat balance is, integration(T - 650)(0.16 + 4.78 * (10^-3) * T)dt = integration(295 - 349.9)(0.7935 + 1.298 * (10^-4) * T)dt + Hv + integration(349.9 - T)*0.4693*dT
//solving above equation, we get,
T1 = 540.1;//K
disp("K",T1,"equilibrium temperature of the mixture = ")
