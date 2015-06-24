//Volume low//
pathname=get_absolute_file_path('8.07.sce')
filename=pathname+filesep()+'8.07-data.sci'
exec(filename)
//Velocity(in ft/sec):
V2=sqrt(2*g*l/(f*((L+l)/D*12+8)+1))
//Volume flow rate(in gpm):
Q=V2*%pi*(D/12)^2/4*7.48*60
printf("\n\nRESULTS\n\n")
printf("\n\nVolume low rate: %.3f\n\n",Q)
