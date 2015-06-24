pathname=get_absolute_file_path('16.04.sce')
filename=pathname+filesep()+'16.04-data.sci'
exec(filename)
//Volume corresponding to suction condition(in m^3/min):
V1=pa*T1*Va/(p1*Ta)
//Compression work(in hp):
W=n/(n-1)*p1*10^2*V1*((p2/p1)^((n-1)/n)-1)/(60*0.7457)
//Power input required(in hp):
W1=W/nm
printf("\n RESULT \n")
printf("\nPower input = %f hp",W1)
//Volumetric efficiency:
nv=p1*Ta/(pa*T1)*(1+C-C*(p2/p1)^(1/n))
//Stroke volume per cycle(in m^3/cycle):
Vs=Va/(2*N)
//Actual stroke volume(in m^3/cycle):
Vsa=Vs/nv
//Bore(in m):
D=(Vsa*4/(%pi*r1))^(1/3)
//Stroke(in m):
L=r1*D
printf("\nBore = %f cm",D*100)
printf("\nStroke = %f cm",L*100)
printf("\nVolumetric efficiency = %f percent",nv*100)