pathname=get_absolute_file_path('17_1.sce')
filename=pathname+filesep()+'17_1_data.sci'
exec(filename)
//Swept volume
Vs=0.25*%pi*D^2*L*10^-3
//Total charge taken in per cycle
Vc=nv*Vs
//Volume of gas used per minute
Vg=(Vc/(AF+1))*(N/2)
//Heat input
H=CV*Vg
//Brake power of the engine
bp=nbth*H/60
printf("\n\nRESULTS\n\n")
printf("\nBrake power of Engine:%f\n",bp)