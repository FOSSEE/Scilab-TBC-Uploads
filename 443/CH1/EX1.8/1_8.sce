pathname=get_absolute_file_path('1_8.sce')
filename=pathname+filesep()+'1_8_data.sci'
exec(filename)
//Brake power of the engine(Relation derived using ip=fp+bp & mechanical efficiency at half load)(in kW)
bp=(nmh*ip)/(nmh+0.5-0.5*nmh)
//Frictional power(in kW)
fp=(0.5*bp-nmh*0.5*bp)/nmh
//Mechanical efficiency at full load
nm=bp/ip
//Indicated thermal efficiency
nith=nbth/nm
//Swept volume per cylinder
Vs=Vsf/k
//Clearance volume(in cc)
Vc=Vs/(r-1)
printf("\n\nRESULTS\n\n")
printf("\nBrake power:%f\n",bp)
printf("\nFrictional power:%f\n",fp)
printf("\nMechanical efficiency at full load:%f\n",nm*100)
printf("\nIndicated thermal efficiency:%f\n",nith*100)
printf("\nClearance volume:%f\n",Vc)