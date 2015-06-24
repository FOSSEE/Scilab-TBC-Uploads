pathname=get_absolute_file_path('1_4.sce')
filename=pathname+filesep()+'1_4_data.sci'
exec(filename)
//Total volume per cylinder(in cc)
Vtot=Vall/n
//swept volume per cylinder(in cc)
Vs=Vtot*(Rag/Rc)
//volume of air taken per cycle(in cc)
Vair=nv*Vs
//volume of gas taken per cycle(in cc)
Vgas=Vair/Rag
//energy supplied per cylinder(in kJ)
E=Vgas*10^-6*34*10^3
//energy supplied per cylinder per second(in kJ)
E1=bp/(nth*nm*4)
//speed of engine(in rpm)
N=(E1*120)/E
printf("\n\nRESULTS\n\n")
printf("\ntotal volume swept:%f\n",Vtot)
printf("\nswept volume per cylinder:%f\n",Vs)
printf("\nvolume of air taken in per cycle:%f\n",Vair)
printf("\nvolume of gas taken in per cycle:%f\n",Vgas)
printf("\nenergy supplied per cylinder:%f\n",E)
printf("\nenergy supplied per cylinder per second:%f\n",E1)
printf("\nspeed of the engine:%f\n",N)