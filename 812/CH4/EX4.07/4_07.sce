//Force to hold//
pathname=get_absolute_file_path('4.07.sce')
filename=pathname+filesep()+'4.07-data.sci'
exec(filename)
//Velocity at section 1(in m/sec):
V1=V2*A2/A1
//Gauge pressure(in kPa):
p1g=p1-patm
u1=V1;u2=-V2;
//Reaction force component in the x direction(in N):
Rx=-p1g*A1-u1*d*V1*A1
//Reaction force component in the y direction(in N):
Ry=u2*d*V2*A2
printf("\n\nRESULTS\n\n")
printf("\n\nForce to hold elbow acting to the left: %.3f kN\n\n",Rx/1000)
printf("\n\nForce to hold elbow acting downwards: %.3f N\n\n",Ry)
