//Mass flow//
pathname=get_absolute_file_path('12.02.sce')
filename=pathname+filesep()+'12.02-data.sci'
exec(filename)
//Checking for chocking:
c=pb/p0;
if(c<=0.528)
  //choked
else
  //Not choked
  //Therefore pressure at exit = back pressure
  pe=pb;
  //Mach number at exit:
  Me=(((p0/pe)^((k-1)/k)-1)*(2/(k-1)))^0.5
  //Temperature at exit(in K):
  Te=T0/(1+(k-1)/2*Me^2)
  //Velocity at exit(in m/sec):
  Ve=Me*sqrt(k*R*Te)
  //Density at exit(in kg/m^3):
  de=pe*10^3/R/Te
  //Mass flow rate of air(kg/sec):
  m=de*Ve*Ae
end;
printf("\n\nRESULTS\n\n")
printf("\n\nMach number at exit: %.3f\n\n",Me)
printf("\n\nMass flow rate of air: %.3f kg/sec\n\n",m)
  
