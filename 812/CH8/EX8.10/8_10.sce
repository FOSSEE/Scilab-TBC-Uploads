//Volume and increase//
pathname=get_absolute_file_path('8.10.sce')
filename=pathname+filesep()+'8.10-data.sci'
exec(filename)
//Velocity V1(in m/s):
V1=sqrt(2*g*z0/1.04)
//Volume flow rate(in m^3/sec):
Q=V1*%pi*D^2/4
Kdiff=1-1/A_R^2-Cp
//For 2nd case:
//Velocity(in m/s):
V1=sqrt(2*g*z0/0.59)
//Volume flow rate(in m^3/s):
Qd=V1*%pi*D^2/4
//Increase in discharge after addition of diffuser is:
dQ=(Qd-Q)/Q*100
printf("\n\nRESULTS\n\n")
printf("\n\nVolume flow rate in case1: %.3f m^3/sec\n\n",Q)
printf("\n\nVolume flow rate in case 2: %.3f m^3/sec\n\n",Qd)
printf("\n\nIncrease in discharge after addition of diffuser is: %.3f percent\n\n",dQ)
