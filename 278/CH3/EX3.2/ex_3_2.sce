//find tolerances, fundamental deviations and limit sizs
clc
//solution
//given
//shaft is 40 H8/f7
//since 40 mm lies in the diameter steps of 30 to 50 mm, therefore the mean diameter ie geometric mean of them
D=sqrt(30*50)//mm
i=0.45*((D)^(1/3))+(0.001*D)//mm//standard tolerance unit
//therfore,standard tolerance is
x=25*i*0.001//mm//standard tolerance for grade 8
x1=16*i*0.001//mm//standard tolerance for grade 7
//fundamental deviation
es=-5.5*(D)^0.41*0.001//mm
ei=es-0.025//mm
//limit of size
bs=40//mm//basic size
uh=40+0.039//mm//upper limitt of hole=lower limit  for hole+tolerance for hole
us=40-0.025//mm//uppr limit of shaft is lower limit of hole-fundamental deviation
ls=us-0.025//mm
printf("the standard tolernce for IT8 is,%f mm\n",x)
printf("the satndard tolerance for IT7 is,%f mm\n",x1)
printf("the fundamental upper deviation for shaft is,%f mm\n",es)
printf("the fundamental lower deavtion for shaft is,%f mm\n ",ei)
printf("the basic size is,%f mm\n",bs)
printf("upper limit for hole is,%f mm\n",uh)
printf("the upper limit of shaft is,%f mm\n",us)
printf("the lower limit of shaft is,%f mm\n",ls)