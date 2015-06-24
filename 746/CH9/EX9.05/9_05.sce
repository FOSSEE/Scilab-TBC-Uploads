//force and power//
pathname=get_absolute_file_path('9.05.sce')
filename=pathname+filesep()+'9.05-data.sci'
exec(filename)
//Speed in m/s:
U=s*6076*0.305/3600
//Reynolds number:
Re=U*L/v
//Drag coefficient:
Cd=0.455/log10(Re)^2.58-1610/Re
//Area(in m^2):
A=L*(W+D)
//Drag force(in N)
Fd=Cd*A*0.5*d*U^2
//Power required to overcome skin friction drag(in W):
P=Fd*U
printf("\n\nRESULTS\n\n")
printf("\n\nDrag force: %f N\n\n",Fd)
printf("\n\nPower required to overcome skin friction drag: %.3f W\n\n",P)
