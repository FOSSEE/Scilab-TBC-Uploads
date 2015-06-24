//Leakage flow rate//
pathname=get_absolute_file_path('8.01.sce')
filename=pathname+filesep()+'8.01-data.sci'
exec(filename)
//Leakage flow rate (in mm^3/sec):
Q=%pi/12*D*a^3*(p1-p2)*10^3/u/L
//Velocity of flow(in m/sec):
V=Q/%pi/D/a/1000
//Specific gravity of SAE 10W oil:
SG=0.92;
//Reynolds Number:
Re=SG*dw*V*a/u/1000
//As Re<1400, flow is laminar.
printf("\n\nRESULTS\n\n")
printf("\n\nLeakage flow rate: %.3f mm^3/sec\n\n",Q)
