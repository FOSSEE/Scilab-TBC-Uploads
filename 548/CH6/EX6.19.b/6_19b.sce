pathname=get_absolute_file_path('6_19b.sce')
filename=pathname+filesep()+'6_19data.sci'
exec(filename)
disp("(R/C)max=(P/W)max-0.8776*sqrt(W/(S*D*Cdo))*(Cd/Cl)^1.5")
A=Pa/Wo;
Cd_Cl=2*Cdo/sqrt(Cdo*%pi*e*AR);//ratio , Cd/Cl
B=0.8776*sqrt(Wo/(S*D*Cdo))*(Cd_Cl)^1.5;
R_Cmax=A-B;//maximum rate of climb
printf("\Answer:\n")
printf("\n\maximum rate of climb at sea level: %f m/s\n\n",R_Cmax)