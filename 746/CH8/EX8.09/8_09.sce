//Loss Coefficient//
pathname=get_absolute_file_path('8.09.sce')
filename=pathname+filesep()+'8.09-data.sci'
exec(filename)
//Average velocity (in ft/s):
V2=4/%pi*Q/D^2*144
//Reynolds number:
Re=V2*D/v/12
//For this value,
f=0.013;
//Power law exponent:
n=-1.7+1.8*log10(Re)
//Value of V/U:
v_u=2*n^2/(n+1)/(2*n+1)
//Value of alpha:
alpha=(1/v_u)^3*2*n^2/(3+n)/(3+2*n)
//Loss Coefficient for a square edged entrance:
K=2*g*h/V2^2-f*L/D*12-alpha;
printf("\n\nRESULTS\n\n")
printf("\n\nLoss Coefficient for a square edged entrance: %.3f \n\n",K)
