pathname=get_absolute_file_path('20_3.sce')
filename=pathname+filesep()+'20_3_data.sci'
exec(filename)
//Question 20.3 
//hydrogen ratio
h=(26*1)/(12*12)
//Fuel to air ratio 
far=0.33*(1+h)*((CO2+CO)/N) 
//Mass flow of air
ma=ff/(far*60)
//Volume total (in m3/cycle)
Vtot=(%pi/4*(d*d)*(2*l)*(cr/(cr-1)))
//Scavanger density
psc=(ep/(r*t))
//Theoretical mass flow
tmf=psc*Vtot*s
//Scavanger efficiency
nsc=(ma/tmf)
//Indicated mean effective pressure (in kN/m2)
imep = (nsc*psc)*(cr/(cr-1))*(nith*far*CV)
printf("\n\nRESULTS\n\n")
printf("\nScavanger efficiency: %f\n",nsc)
printf("\nIndicated mean effective pressure %f\n",imep)