pathname=get_absolute_file_path('5_6.sce')
filename=pathname+filesep()+'5_6data.sci'
exec(filename)
SA=0.187*M0/r;
SB=0.44*M0/r;
SC=0.373*M0/r;
printf("\nSA: %f N ",SA)
printf("\nSB: %f N",SB)
printf("\nSC:%f  N",SC)
printf("\nM1: %f N.mm",SA*r)
printf("\nM2: %f N.mm",SB*r)
printf("\nM3: %f N.mm",SC*r)