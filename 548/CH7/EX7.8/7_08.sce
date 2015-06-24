pathname=get_absolute_file_path('7_08.sce')
filename=pathname+filesep()+'7_08data.sci'
exec(filename)
Dtrm=(Cmo+DCmcg*a1)/(Vh*DClt);
disp(Dtrm,"Dtrm=","Dtrm=(Cmo+DCmg*a1)/(Vh*DClt)","elevator deflection angle Dtrm::")
printf("\Answer:\n")
printf("\n\To trim the airplane at an angle of attack of 6.5 degree the elevator must be deflected upward(negative) by : %f degree\n\n",Dtrm)
