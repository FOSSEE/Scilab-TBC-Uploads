pathname=get_absolute_file_path('5_20.sce')
filename=pathname+filesep()+'5_20data.sci'
exec(filename)
V1=sqrt(2*Wt/(D*S*Clm));disp(V1,"V1=","V1=sqrt(2*Wt/(D*S*Clm))","stalling speed for full fuel tank V1:")
V2=sqrt(2*Wf/(D*S*Clm));disp(V2,"V2=","V2=sqrt(2*Wf/(D*S*Clm))","stalling speed for empty fuel tank V1:")
printf("\Answer:\n")
printf("\n\stalling speed for full fuel tank : %f m/s\n\n",V1)
printf("\n\stalling speed for empty fuel tank : %f m/s\n\n",V2)

