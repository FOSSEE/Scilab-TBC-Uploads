//Chapter-8,Example8_27,pg 8_72
R1=100
R2=100
R3=230
R4=R1*R3/R2
lerrR1=0.02/100
lerrR3=0.01/100
lerrR2=0.02/100//lerrR........limiting error in R
lerrR4=lerrR1+lerrR3+lerrR2
R4u=R4+lerrR4*R4
R4l=R4-lerrR4*R4//limiting ranges of R4
printf("limiting range of R4\n")
printf("upper limit=%.3f ohm\n",R4u)
printf("lower limit=%.3f ohm",R4l)
