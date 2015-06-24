//prssure required//
filename=pathname+filesep()+'06.03-data.sci'
exec(filename)
//Velocity of flwat the inlet(in m/sec):
V1=Ae/Ai*V2
//Gauge pressure required at the inlet(in kPa):
p=0.5*da*(V2^2-V1^2)
printf("\n\nRESULTS\n\n")
printf("\n\nGauge prssure required at the inlet: %.3f kPa\n\n",p/1000)
