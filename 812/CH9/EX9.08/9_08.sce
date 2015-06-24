//Optimum cruise speed//
pathname=get_absolute_file_path('9.08.sce')
filename=pathname+filesep()+'9.08-data.sci'
exec(filename)
//Plotting velocity with drag force
V=175:25:455;

[m n]=size(V);
for i=1:n
  CL(i)=2*W/p*(3600/V(i)/5280)^2/A;
  Cd(i)=Cd0+CL(i)^2/%pi/ar;
  Fd(i)=Cd(i)/CL(i)*W;
  FD(i)=Fd(i)/1000;
end
plot(V,FD)
xtitle('Flight speed vs thrust','Flight Speed(in mph)','Drag Force(in 1000lbf)')
//Optimum cuise speed at speed level is obtained to be 320 mph from the graph.
Vosl=320;
//Ratio of speeds at 30000 ft and at sea level is given by:
r=sqrt(1/0.375);
//Stall speed at 30000ft is(in mph):
Vs3=Vssl*r;
//Optimum Cruise speed at 30000ft(in mph):
Vo3=Vosl*r;
printf("\n\nRESULTS\n\n")
printf("\n\nOptimum cruise speed at sea level: %.3f mph\n\n",Vosl)
printf("\n\nStall speed at 30000 ft: %.3f mph\n\n",Vs3)
printf("\n\nOptimum cruise speed at 30000 ft: %.3f\n\n",Vo3)
