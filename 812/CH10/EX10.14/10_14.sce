//propeller//
pathname=get_absolute_file_path('10.14.sce')
filename=pathname+filesep()+'10.14-data.sci'
exec(filename)
//Propeller Thrust(in MN) :
Ft=P/V
//Required power input  to the propeller(in MW):
Pin=P/Eff
//Calculating value of D(in m):
nD=V/J
D=(Ft*10^6/p/(nD)^2/Cf)^0.5
//Operating speed (in rpm) is given by:
n=nD/D*60
printf("\n\nRESULTS\n\n")
printf("\n\nDiameter of the single propeller required to pwer the ship:%.3f m\n\n",D)
printf("\n\nOperating speed of the propeller: %.3f rpm\n\n",n)
