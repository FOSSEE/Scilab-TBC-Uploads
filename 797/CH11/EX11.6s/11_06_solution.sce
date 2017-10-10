//Solution 11-5
WD=get_absolute_file_path('11_06_solution.sce');
datafile=WD+filesep()+'11_06_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100; //from [cm] to [m]
V = V / 3.6 //from [km/h] to [m/s]
P = P * 1.01325 * 10**5; //from [atm] to [Pa]
T = T + 273; //from [C] to [K]
rho_air = P / (R * T); //from ideal gas equation
A = %pi / 4 * D**2; //frontal area of ball
omega = 2 * %pi * N / 60; //angular velocity of ball [rad/s]
nd_rotation = omega * D /(2 * V); //non dimensional rate of rotation
//from figure 11-53 lift coefficient coefficient corresponding to nd_rotation is
C_L = 0.21;
F_L = C_L * A * rho_air * V**2 / 2; //drag force
W = m * g;
if W > F_L then
    printf("Ball will drop under the combined effect of gravity and lift due to spinning with net force of %1.3f - %1.3f = %1.3f N", W, F_L, W - F_L);
else
    printf("Ball will rise under under the combined effect of gravity and lift due to spinning with net force of %1.3f - %1.3f = %1.3f N", F_L, W, F_L - W);
end
