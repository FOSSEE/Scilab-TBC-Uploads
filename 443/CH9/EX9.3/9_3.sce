pathname=get_absolute_file_path('9_3.sce')
filename=pathname+filesep()+'9_3_data.sci'
exec(filename)
//Power output per cylinder
Pc=P/k
//Fuel consumption per cylinder
Fc=Pc*bsfc
//Fuel injected per cycle
mf=(Fc/60)/(N/2)
//Time for injection
t=(Tc*60)/(360*N)
//Pressure at beginning
dpb=P1-Pc1
//Pressure at end
dpe=P2-Pc2
//Average pressure difference
Pd=(dpb+dpe)/2
//Velocity of injection
Vinj=Cd*sqrt(2*((Pd)*10^5)/Pf)
//Volume of fuel injected per cycle
Vf=mf/(Pf)
//Area  of orifice
Af=Vf/(Vinj*t)
printf("\n\nRESULTS\n\n")
printf("\nArea of orifice:%f\n",Af*10^6)