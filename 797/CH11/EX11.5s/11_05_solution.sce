//Solution 11-5
WD=get_absolute_file_path('11_05_solution.sce');
datafile=WD+filesep()+'11_05_example.sci';
clc;
exec(datafile)
//unit conversions
V = V / 3.6; //from [km/h] to [m/s]
//(a)
W = m * g; //weight of aircraft [N]
//from total weight = lift force minimum velocity is given by
V_min1 = sqrt(2 * W /(rho_ground * C_Lmax * A));
V_min2 = sqrt(2 * W /(rho_ground * C_Lmax_flap *A));
V_min1_safe = 1.2 * V_min1; //safe velocity without flaps
V_min2_safe = 1.2 * V_min2; //safe velocity with flaps
V_min1_safe = V_min1_safe * 3.6; //from [m/s] to [km/h]
V_min2_safe = V_min2_safe * 3.6; //from [m/s] to [km/h]
printf("a) The minimum safe speed for landing and takeoff are\n");
printf ("\t %1.0f km/h without flaps\n", V_min1_safe);
printf("\t %1.0f km/h with flaps\n", V_min2_safe);
//(b)
C_L = W / (0.5 * rho_altitude * V**2 * A);
//from figure 11-45 the angle of attack corresponding to above C_L value is
alpha = 10;
printf("b) The angle of attack to cruise steadily at crusing altitude is %1.0f degrees.\n", alpha);
//(c)
//from figure 11-45 drag coefficient corresponding to C_L is
C_D = 0.03;
F_D = C_D * A * rho_altitude * V**2 / 2; //thrust force = drag force
P = F_D * V; //power required to provide thrust
printf("c) The power that needs to be supplied to provide enough thrust is %1.0f kW.", P / 1000);
