pathname=get_absolute_file_path('1_10.sce')
filename=pathname+filesep()+'1_10_data.sci'
exec(filename)
//brake thermal efficiency
nbth=nith*nm
//rate of energy input from fuel
Ef=mf/3600*CV
//brake power
bp=nbth*Ef
//for square engine d=L
L^3=(bp*60000/0.25*%pi*k*pbm*n)
//specific speed of the engine
L=((sp*60)/(2*N))
//stroke of the engine
L=sqrt((L^3*n)/(L*N))
//crank radius
r=L/2
//speed
N=360/L
printf("\n\nRESULTS\n\n")
printf("\nstroke length:%f\n",L)
printf("\ncrank radius:%f\n",r)
printf("\nspeed:%f\n",N)