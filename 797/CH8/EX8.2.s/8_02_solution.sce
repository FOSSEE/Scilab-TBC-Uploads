//Solution 8-2
WD=get_absolute_file_path('8_02_solution.sce');
datafile=WD+filesep()+'8_02_example.sci';
exec(datafile);
//unit conversions
D = D / 100; //from [cm] to [m]
//(a)Head loss
Re = rho * V_avg * D / mu;
if Re < 2300 then
    f = 64 / Re;
end
h_L = f * L * V_avg**2 / (2 * g * D);
printf("Head loss in pipe is %1.2f m", h_L);
//(b)
deltaP = f * L * rho * V_avg**2 / (2 * D);
printf("\nPressure drop in pipe is %1.2f kPa", deltaP / 1000);
//(c)
Vdot = V_avg * %pi * D**2 / 4;
Wdot_pump = deltaP * Vdot;
printf("\nPumping power required to overcome pressure drop is %1.2f W", Wdot_pump);