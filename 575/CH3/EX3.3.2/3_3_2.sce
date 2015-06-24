clc
pathname=get_absolute_file_path('3_3_2.sce')
filename=pathname+filesep()+'332.sci'
exec(filename)
massA=mass*xA
printf(" \n Mass of A in %d kg of solution = %f kg A",mass,massA)
flowrateA=flowrate1*xA
printf(" \n Mass flow rate of A in a stream flowing at %d lbm/h =%f lbm A/h",flowrate1,flowrateA)
flowrateB=flowrate2*yB
printf(" \n Molar flowrate of B in a stream flowing at %d mol/min = %f molB/min",flowrate2,flowrateB)
Totalflowrate=molarB/yB
printf(" \n Total flow rate of a solution with %d kmolB/s=%f",molarB,Totalflowrate)
MassSolution=massofA/xA
printf(" \n Mass of solution that contains %d lbm of A = %f",massofA,MassSolution)