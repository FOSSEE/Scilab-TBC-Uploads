pathname=get_absolute_file_path('19_1.sce')
filename=pathname+filesep()+'19_1_data.sci'
exec(filename)
//Problem no 19.1
//Swept Volume(in m^3/min)
Vs=(3/1000)*(s/2)
//Actual volume of air inducted(in m^3/min)
Va=Vs*nv
//Power developed (in kW)
Po=Va*fia
//Delivery pressure(in bar)
pa=a*pr
//Dilivery temperature from the compressor (in kelvin)
td=t*((pa)^(0.4/1.4))
//Actal temperature( in kelvin)
tac=t+((td-t)/nc)
//Engine intake temperature(in kelvin)
ti=tac-5.6
//Actual volume of air inducted corresponding to swept volume at atmospheric 
//condition by the engine (in m^3/min)
Vact =(Vs*pa*t/(a*ti))
//Increase intake volume of air (dfia in m^3/min)
dV=Vact-Va
//Increase in ip due to supercharging (dip1 in kW)
dip1=dV*fia
//Increase in ip due to increase in intake pressure because of supercharging
//(dip2 in kW)
dip2=((pr-a)*(10^5)*Vs)/(60*1000)
//Total increase in ip 
dip=dip1+dip2
//Mass of air deliverd by compressor / min
ma=(pr*10^5*Vs)/(t*ti)
//Power required to run the compressor (in kW)
pr=(ma*Cp*(tac-t))/60
//Net increase in bp 
bp=dip-pr
//Percentage increase 
inc=(bp/Po)
printf("\n\nRESULTS\n\n")
printf("\n Percentage increase %f \n",inc*100)