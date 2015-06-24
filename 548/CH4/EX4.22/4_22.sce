pathname=get_absolute_file_path('4_22.sce')
filename=pathname+filesep()+'4_22data.sci'
exec(filename)
Ve=Ae*Me;disp(Ve,"Ve=","velocity at exit Ve=Ae*Me")
Mt=Dt*At*Vt;disp(Mt,"Mt=Dt*At*Vt","mass flow through nozzle Mt")
printf("\Answer:\n")
printf("\n\Velocity at exit: %f m/s\n\n",Ve)
printf("\n\mass flow through nozzle: %f Kg/m^3\n\n",Mt)

