clc;
pathname=get_absolute_file_path('5_9_soln.sce')
filename=pathname+filesep()+'5_9_data.sci'
exec(filename)

// Solutions:
// volumetric displacement in m^3/rev,
Vd=100/(10^6); //m^3/rev
// Speed of pump in rps,
N=N/60; //rps
// Theoretical pump flow rate,
Qt=Vd*N; //m^3/s
// Therefore,volumetric efficiency,
eta_v=(Qa/Qt);
// Now, mechanical efficiency,
eta_m=(p*10^5*Qt)/(Ta*N*2*(%pi));
// overall Efficiency,
eta_o=eta_v*eta_m*100; //%
// rounding off the above answer
eta_o=fix(eta_o)+(fix(floor((eta_o-fix(eta_o))*10))/10); //%
// Theoretical torque required to operate the pump,
Tt=ceil(eta_m*Ta); //N.m

// Results:
printf("\n  Results:  ")
printf("\n The overall efficiency of pump is %.1f percent.",eta_o)
printf("\n The Theoretical torque required to operate the pump  is %.0f N.m.",Tt)


