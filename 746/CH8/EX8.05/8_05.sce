//required//
pathname=get_absolute_file_path('8.05.sce')
filename=pathname+filesep()+'8.05-data.sci'
exec(filename)
//Reservoir depth required to maintain flow(in m):
D1=8*Q^2/(%pi)^2/D^4/g*(f*L/D+K+1)
//Reynolds number:
Re=4*d*Q/((%pi)*u*D)
printf("\n\nRESULTS\n\n")
printf("\n\nReservoir depth required to maintain flow: %.3f m\n\n",D1)
