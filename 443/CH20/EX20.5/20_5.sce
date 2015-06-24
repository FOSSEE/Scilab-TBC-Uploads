pathname=get_absolute_file_path('20_5.sce')
filename=pathname+filesep()+'20_5_data.sci'
exec(filename)
//Question 20.5 page 715
//Volume total (in m3/cycle)
Vtot=k*(%pi/4)*(d*d)*(2*l)*(cr/(cr-1))
//Scavanger Density (psc)
psc=ep/(r*t)
//Theortical mass flow rate (in kg/cycle)
tmf=Vtot*psc
//Actual mass flow rate (amr) (in kg/cycle)
amr=nsc*tmf
//Mass flow rate of air supplied by the blower (mfrb) (in kg/cycle)
mfrb=Rsc*tmf
//Actual temperature (dta) (in kelvin)
dta=((300*((1.15/1)^0.286))-t)/0.75
//New temperature (T2 in kelvin)
T2=t+dta
//Compressor work (in kW)
Wc=((amr*dta*cp*s)/60)
//V displacement (in m3/cycle)
Vdisp=(k*(%pi/4)*(d*d*2*l))
//Brake mean effective pressure (bmep in bar)
bmep=bp*1000/(Vdisp*(s/60)*10^(5))
//Total mechanical loss
fp = 1.5*20
ip =bp+fp
//Fuel consumed per hour (mf)
mf=bsfc*bp
//Idicated thermal efficiency (nith)
nith=(ip/(mf*CV))*100
//Fuel-air ratio
far=(mf/(60*720*Vtot))
printf("\n\nRESULTS\n\n")
printf("\nIdicated thermal efficiency %f\n",nith)
printf("\nFuel-air Ratio %f\n",far)