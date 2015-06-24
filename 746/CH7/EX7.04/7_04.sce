//speed and force//
pathname=get_absolute_file_path('7.04.sce')
filename=pathname+filesep()+'7.04-data.sci'
exec(filename)
//Velocity of prototype in ft/sec
Vp1=Vp*6080/3600
//Reynolds number of prototype:
Rep=Vp1*Dp/vp
//Rep=Rem
//Therefore:
Rem=Rep;
//Velocity of air for wind tunnel(in ft/sec):
Vm=Rem*vm/(Dm/12)
//Drag force on prototype(in lbf):
Fp=Fm*(dp/dm)*(Vp1/Vm)^2*(Dp/(Dm/12))^2
printf("\n\nRESULTS\n\n")
printf("\n\nTest speed in air: %.3f ft/sec\n\n",Vm)
printf("\n\nDrag force on prototype: %.3f lbf\n\n",Fp)
