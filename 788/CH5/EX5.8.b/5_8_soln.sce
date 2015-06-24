clc;
pathname=get_absolute_file_path('5_8_soln.sce')
filename=pathname+filesep()+'5_8_data.sci'
exec(filename)

// Solutions:
// Theoretical pump flow rate,
Qt=(Vd*N)/231; //gpm
// rounding off the above answer
Qt=fix(Qt)+(fix(floor((Qt-fix(Qt))*10))/10); //gpm
// Therefore,volumetric efficiency,
eta_v=(Qa/Qt);
// Now, mechanical efficiency,
eta_m=((p*Qt)/1714)/((Ta*N)/63000);
// overall Efficiency,
eta_o=eta_v*eta_m*100; //%
// rounding off the above answer
eta_o=fix(eta_o)+(fix(floor((eta_o-fix(eta_o))*10))/10); //%
// Theoretical torque required to operate the pump,
Tt=floor(eta_m*Ta); //in.lb

// Results:
printf("\n  Results:  ")
printf("\n The overall efficiency of pump is %.1f percent.",eta_o)
printf("\n The Theoretical torque required to operate the pump  is %.0f in.lb.",Tt)



