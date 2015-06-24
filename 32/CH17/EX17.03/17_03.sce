//pathname=get_absolute_file_path('17.03.sce')
//filename=pathname+filesep()+'17.03-data.sci'
//exec(filename)
//Mechanical efficiency:
nm=0.90
//Rating(in kW):
BP=38
//Indicated power(in kW):
IP=BP/nm
//Fricitional loss(in kW):
FP=IP-BP
//Brake power at quater load(in kW):
BP1=0.25*BP
//Mechanical efficiency:
nm1=BP1/(BP1+FP)*100
printf("\n RESULT \n")
printf("\nIndicated power = %f W",IP)
printf("\nFricitonal power loss = %f kw",FP)
printf("\nMechanical efficiency = %f percent",nm1)