pathname=get_absolute_file_path('9_7.sce')
filename=pathname+filesep()+'9_7_data.sci'
exec(filename)
//Volume of fuel in delivery line
Vdl=0.25*%pi*d^2*L
//Change in volume during compression
dv=K*(Vpb+Vdl+Vin)*(p2-p1)
//Total displacement of plunger
Vp=dv+Vdel
//Effective stroke of plunger
Ln=(Vp*4)/(%pi*dn^2)
printf("\n\nRESULTS\n\n")
printf("\nTotal displacement of plunger:%f\n",Vp)
printf("\nEffective stroke of plunger:%f\n",Ln)

