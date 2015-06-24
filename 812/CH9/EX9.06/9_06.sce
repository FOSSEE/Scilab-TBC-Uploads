//Bending moment//
pathname=get_absolute_file_path('9.06.sce')
filename=pathname+filesep()+'9.06-data.sci'
exec(filename)
//Velocity in m/sec:
V=s*5/18
//Reynolds number:
Re=d*V*D/u
//Value of Cd is obtained as:
Cd=0.35;
//Area(in m^2):
A=L^2;
//Moment about the chimney base(in N-m):
M0=Cd*A*D/4*d*V^2
printf("\n\nRESULTS\n\n")
printf("\n\nBending moment at the bottom of the chimney: %.3f N-m\n\n",M0)

