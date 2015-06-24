pathname=get_absolute_file_path('6_14.sce')
filename=pathname+filesep()+'6_14data.sci'
exec(filename)
Cl_Cdmax=sqrt(Cdo*%pi*e*AR)/(2*Cdo);
disp(Cl_Cdmax,"(Cl/Cd)max=","(Cl/Cd)max=sqrt(Cdo*%pi*e*AR)/(2*Cdo)")
Cl_Cd1max=(3*Cdo*%pi*e*AR)^(3/4)/(4*Cdo);
disp(Cl_Cd1max,"((Cl/Cd)^1.5)max=","((Cl/Cd)^1.5)max=(3*Cdo*%pi*e*AR)^(3/4)/(4*Cdo)")