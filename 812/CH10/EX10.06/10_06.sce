//Specific and relation//
pathname=get_absolute_file_path('10.06.sce')
filename=pathname+filesep()+'10.06-data.sci'
exec(filename)
//Specific speed in Us customary units:
Nscu=N*Qus^0.5/Hus^0.75
//Conversion to SI units:
w=1170*2*%pi/60;
Qsi=Qus/7.48/60*0.305^3;
Hsi=Hus*0.305;
//Energy per unit mass is:
h=g*Hsi;
//Specific speed in SI units:
Nssi=w*Qsi^0.5/h^0.75
//Conversion to hertz:
whz=N/60;
//Specific speed in European units:
Nseu=whz*Qsi^0.5/65.5^0.75
//Relation between specific speeds in Us customary units and European units:
Conversionfactor1=Nscu/Nseu
//Relation between specific speeds in Us customary units and SI units:
Conversionfactor2=Nscu/Nssi
printf("\n\nRESULTS\n\n")
printf("\n\nSpecific speed in US customary units: %.3f \n\n",Nscu)
printf("\n\nSpecific speed in SI units: %.3f \n\n",Nssi)
printf("\n\nSpecific speedin European units: %.3f \n\n",Nseu)
printf("\n\nRelation between specific speeds in Us customary units and European units: %.3f \n\n",Conversionfactor1)
printf("\n\nRelation between specific speeds in Us customary units and SI units: %.3f \n\n",Conversionfactor2)
