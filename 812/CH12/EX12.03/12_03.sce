//mass and area//
pathname=get_absolute_file_path('12.03.sce')
filename=pathname+filesep()+'12.03-data.sci'
exec(filename)
//Saturation pressure(in psia):
p0=p1*(1+(k-1)/2*M1^2)^(k/(k-1))
//Checking for choking:
x=pb/p0;
if(x>0.528)
  //Not choked
else
  //choked
end
//As there is choking:
Mt=1;
//Velocity at entry:
V1=M1*sqrt(k*R*(T1+460)*32.2)
//Density at the entry(in lbm/ft^3):
d1=p1/(R*(T1+460))*144
//Mass flow rate(in lbm/sec):
m=d1*V1*A1
//Finding the valueof A1/A*;
A=1/M1*((1+(k-1)/2*M1^2)/(1+(k-1)/2))^((k+1)/(2*(k-1)))
//For choked flow, At=A*
At=A1/A
printf("\n\nRESULTS\n\n")
printf("\n\nMach number at throat: %.3f\n\n",Mt)
printf("\n\nMass flow rate: %.3f lbm/sec\n\n",m)
printf("\n\nArea at throat: %.3f ft^2\n\n",At)
