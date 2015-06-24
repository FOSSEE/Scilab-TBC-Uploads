pathname=get_absolute_file_path('1_6.sce')
filename=pathname+filesep()+'1_6_data.sci'
exec(filename)
//energy input(in kJ/s)
E=bp/(nm*nth)
//number of strokes per second
n=N/(2*60)
//energy input per power stroke(in kJ)
E1=E/n
//actual volume of hydrogen taken in(in cc)
Vh=(E1*10^6)/CV
//actual volume of air taken in(in cc)
Va=Raf*Vh
//swept volume(in cc)
Vs=Va/nv
//cubic capacity of the engine(in cc)
Vt=Vs*K
printf("\n\nRESULTS\n\n")
printf("\nenergy input:%f\n",E)
printf("\nnumber of stroke:%f\n",n)
printf("\nenergy input per power stroke:%f\n",E1)
printf("\nactual volume of hydrogen:%f\n",Vh)
printf("\nactual volume of air:%f\n",Va)
printf("\nswept volume:%f\n",Vs)
printf("\ncubic capacity of the engine:%f\n",Vt)