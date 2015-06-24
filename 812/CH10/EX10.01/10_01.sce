//input and power//
pathname=get_absolute_file_path('10.01.sce')
filename=pathname+filesep()+'10.01-data.sci'
exec(filename)
//Impeller exit width b2(in feet):
b2=Q*12/(2*%pi*R2*Vrb2*7.48*60)
//Torque of the Shaft, Tshaft(in ft-lbf):
Tshaft=w*R2^2*p*Q*2*%pi/3600/7.48/144
//Power, Wm(in hp):
Wm=w*Tshaft*2*%pi/60/550
printf("\n\nRESULTS\n\n")
printf("\n\nImpeller exit width: %.3f feet\n\n",b2)
printf("\n\Torque input: %.3f ft-lbf\n\n",Tshaft)
printf("\n\nPower: %.3f hp\n\n",Wm)
