pathname=get_absolute_file_path('6_15.sce')
filename=pathname+filesep()+'6_15data.sci'
exec(filename)
Cl_Cdmax=sqrt(Cdo*%pi*e*AR)/(2*Cdo);
disp(Cl_Cdmax,"(Cl/Cd)max=","(Cl/Cd)max=sqrt(Cdo*%pi*e*AR)/(2*Cdo)")
Cl_Cd1max=((1/3)*Cdo*%pi*e*AR)^(1/4)/(4*Cdo/3);
disp(Cl_Cd1max,"(Cl^0.5/Cd)max=","(Cl^0.5/Cd)max=((1/3)*Cdo*%pi*e*AR)^(1/4)/(4*Cdo/3)")