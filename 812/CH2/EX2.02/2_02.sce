//Viscosity and stress//
pathname=get_absolute_file_path('2.02.sce')
filename=pathname+filesep()+'2.02-data.sci'
exec(filename)

//Viscosity in units of lbf-s/ft^2:
u1=u/100/454/32.2*30.5
//Kinematic viscosity (in m/sec^2):
v=u1/SG/d*(0.305)^2
//Shear stress on the upper plate(lbf/ft^2):
tu=u1*U/D*1000
//Shear stress on the lower plate(in Pa)
tl=tu*4.45/0.305^2
printf("\n\nRESULTS\n\n")
printf("\n\nViscosity in units of lbf-s/ft^2: %1.8f $lbf-s/ft^2\n\n",u1)
printf("\n\nKinematic viscosity: %1.8f m/sec^2\n\n",v)
printf("\n\nShear stres on the upeer plate: %f lbf/ft^2\n\n",tu)
printf("\n\nSear stress on the lower plate: %f Pa\n\n",tl)
