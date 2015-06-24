//speed and actual speed//
pathname=get_absolute_file_path('1.02.sce')
filename=pathname+filesep()+'1.02-data.sci'
exec(filename)
//Speed at which the ball hits the ground(in m/sec):
V=sqrt(m*g/k*(1-%e^(2*k/m*(-y0))))
//Terminal speed(in m/sec):
Vt=sqrt(m*g/k)
//Ratio of actual speed to the terminal speed:
r=V/Vt;
printf("\n\nRESULTS\n\n")
printf("\n\nSpeed at which the ball hits he ground: %f m/sec\n\n",V)
printf("\n\nRatio of actual speed to the terminal speed: %f\n\n",r)
