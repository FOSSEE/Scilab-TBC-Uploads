pathname=get_absolute_file_path('4_23.sce')
filename=pathname+filesep()+'4_23data.sci'
exec(filename)
t=5.2*x/Re^0.5;disp(t,"t=","boundary layer thickness t=5.2*x/Re^0.5")
D=q*S*Cf;disp(D,"D=","drag on one surface of the plate given by D=q*s*Cf")
disp(2*D,"Dn=","Net drag Dn is two times both surface i.e 2D")
printf("\Answer:\n")
printf("\n\Boundary layer thickness at downstream edge: %f m\n\n",t)
printf("\n\The drag force on plate: %f N\n\n",2*D)

