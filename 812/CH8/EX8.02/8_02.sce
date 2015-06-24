//Torque and power//
pathname=get_absolute_file_path('8.02.sce')
filename=pathname+filesep()+'8.02-data.sci'
exec(filename)
//Shear stres (in lbf/ft^2):
Tyx=u*N*2*%pi/60*D/2/(a/2)
//Torqe(in inches-lbf):
T=%pi/2*Tyx*D^2*L/144
//Power dissipated in the bearing(in hp):
P=T*N/60*2*%pi/12/550
//Reynolds number:
Re=SG*p*N*2*%pi/60*1.5*a/2/u/144
printf("\n\nRESULTS\n\n")
printf("\n\nTorque: %.3f inches-lbf\n\n",T)
printf("\n\nPower dissipated in the bearing: %.3f hp\n\n",P)
