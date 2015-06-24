//pathname=get_absolute_file_path('2.05.sce')
//filename=pathname+filesep()+'2.05-data.sci'
//exec(filename)
//Freezing point of water in unknown temperature scale:
X0=0
//Boiling point of water in unknown temperature scale:
X100=1000
//Conversion Relation : X=aC+b
//Value of a:
a=(X100-X0)/(100-0)
b=0
//Absolute temperature in new temperature scale:
X=a*-273.15+b
printf("\n\n RESULT \n\n")
printf("\n\n Conversion Relation: X=%f*C+%f",a,b)
printf("\n\n Absolute temperature in new scale= %f",X)