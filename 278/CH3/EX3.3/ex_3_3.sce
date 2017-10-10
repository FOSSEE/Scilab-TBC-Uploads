
//a.)12 mm elctric motion
//12 mm lies between 10 and 18,therefore
D=sqrt(10*18)//mm
i=0.45*(D)^0.33+0.001*D//standard tolrence unit
IT8=25*i*0.001//mm//standard tolerance for IT8
es=-11*(D)^0.41*0.001//mm//upper deviation for shaft
ei=es-IT8//mm//lower deviation for shaft
printf("the standard tolerance for shaft and hole of grade 8 is,%f mm\n",IT8)
printf("the upper deviation for shaft is, %f mm",es)
printf("the upper deviation for shaft is,%f mm",ei)