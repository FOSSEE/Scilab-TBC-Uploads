//Actual//
pathname=get_absolute_file_path('10.16.sce')
filename=pathname+filesep()+'10.16-data.sci'
exec(filename)
//Tip speed ratio of windmill:
X=N*2*%pi/60*D/2/(V*5/18)
//Accounting for whirl,max attainable efficiency is:
Efw=0.53;
//Kinetic energy flux(in W) is given by:
KEF=0.5*p*(V*5/18)^3*%pi*(D/2)^2
//Actual Efficiency:
Effa=Po/KEF
//The maximum possible thrust occurs for an interference factor of:
amax=0.5;
//Thrust(in W):
Kx=p*(V*5/18)^2*%pi*(D/2)^2*2*amax*(1-amax)
printf("\n\nRESULTS\n\n")
printf("\n\nTip speed ratio of windmill:%.3f\n\n",X)
printf("\n\nActual Efficiency: %.3f\n\n",Effa)
printf("\n\nActual Thrust: %.3f W\n\n",Kx)
