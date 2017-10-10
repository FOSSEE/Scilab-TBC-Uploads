//Solution 5-02
WD=get_absolute_file_path('5_02_solution.sce');
datafile=WD+filesep()+'5_02_example.sci';
clc;
exec(datafile)
D_jet = D_jet * 10^(-3); //converting jet dia from [mm] to [m]
t = (sqrt(h_0)-sqrt(h_2)) / sqrt(g / 2) * (D_tank / D_jet)^2;
t = t / 60; //converitng time from [s] to [min]
printf("Time required for water level to drop from %1.2f m to %1.2f m is %1.1f min", h_0, h_2, t);
