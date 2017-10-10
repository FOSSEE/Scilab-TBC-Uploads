
//solution
//given 
//75 mm basic size 
//since 75 lies betweenn 50 and 80
D=sqrt(50*80)//mm
i=0.45*(D)^0.33+0.001*D//standard tolerance unit
IT8=25*i*0.001//mm
IT7=16*i*0.001//mm
es=-2.5*(D)^0.34//mm//upper deviation of shaft
ei=es-IT7//mm//lower deviation fot hole
bs=75//mm//basic size
uh=75+IT8//upper limit of hole
us=75-0.01//mm//upper limit of shft
ls=us-0.03//mm
MxC=uh-ls//mm//maximum clearance
miC=75-us//mm
printf("maximum clearance is,%f mm\n",MxC)
printf("minimum clearance is,%f mm",miC)