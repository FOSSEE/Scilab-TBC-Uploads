//Relative speed and friction//
pathname=get_absolute_file_path('4.14.sce')
filename=pathname+filesep()+'4.14-data.sci'
exec(filename)
//Area of jet(in mm^2):
Ajet=%pi/4*D^2
//Jet speed relative to the nozzle(in m/sec):
Vrel=Q/2/Ajet*10^6/60/1000
//Value of w*R in m/sec:
wR=w*R*2*%pi/60/1000
//Friction torque at pivot(in N-m):
Tf=R*(Vrel*cosd(alpha)-wR)*d*Q/1000/60/1000
printf("\n\nRESULTS\n\n")
printf("\n\nJet speed relative to each nozzle: %.2f m/sec\n\n",Vrel)
printf("\n\nFriction torque at pivot: %.5f N-m\n\n",Tf)
