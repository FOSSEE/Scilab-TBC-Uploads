pathname=get_absolute_file_path('17_10.sce')
filename=pathname+filesep()+'17_10_data.sci'
exec(filename)
//Air consumption
ma=(Va/ta)*Pa
//Fuel consumption
mf=(Vf/tf)*Pf
//Air fuel ratio
AF=ma/mf
//Power output
P=(W*N)/Dc
//Brake specific fuel consumption
bsfc=(mf*3600*1000)/P
//Indicated thermal efficiency
nith=P/(mf*CV)*100
printf("\n\nRESULTS\n\n")
printf("mf:%f",mf)
printf("\nBrake specific fuel consumption:%f\n",bsfc)
printf("\nIndicated thermal efficiency:%f\n",nith)
