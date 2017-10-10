//Solution 8-10
WD=get_absolute_file_path('8_10_solution.sce');
datafile=WD+filesep()+'8_10_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100; //from [cm] to [m]
d = d / 100; //from [cm] to [m]
h = h / 100; //from [cm] to [m]
beta1 = d / D; //diameter ratio
A_0 = %pi / 4 * d**2; //area of orifice
deltaP = (rho_Hg - rho_met) * g * h;
C_d = 0.5; //guess value for discharge coefficient of orifice
C_dold =1.0;
//iterative scheme to find correct value of coefficient of discharge
while abs(C_dold - C_d) > 0.0001
    C_dold = C_d;
    Vdot = A_0 * C_dold * sqrt(2 * deltaP / rho_met / (1 - beta1**4));
    V_avg = Vdot / (%pi / 4 * D**2);
    Re = rho_met * V_avg * D / mu;
    C_d = 0.5959 + 0.0312*beta1**2.1 - 0.184*beta1**8 + 91.71 * beta1**2.5 / Re**0.75;
end
printf("Flow rate of methanol is %1.2f L/s", Vdot * 10**3);
printf("\nAverage velocity of methanol is %1.2f m/s", V_avg);
printf("\nReynolds number of flow is %1.2e", Re);