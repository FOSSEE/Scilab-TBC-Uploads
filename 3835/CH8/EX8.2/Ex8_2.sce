clear
//
//given
pg=10 //poles of generator
r=720 //synchronous speed
f=pg*r/120
printf("\n frequency= %0.0f  Hz",f)
//it has been shown that synchronous motor runs at a speed lower than the synchronous speed.The nearest synchronous speed possible in present case is 1200
//case a
r=1200 //synchronous speed possible for present case
pi=120*f/r //poles of the induction motor
printf("\n The number of poles of an induction motor is= %0.1f",pi  )

//case b
n=1170  //load speed
slip=(1200-n)/1200 //calculated as 0.025
printf("\n slip=0.025pu")
