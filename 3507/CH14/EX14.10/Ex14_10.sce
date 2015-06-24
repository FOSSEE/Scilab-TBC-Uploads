// chapter14
// example14.10
// page 305

Rc=500 // ohm
Rin=1d3 // ohm

// gain of second stage is 60 since it has no loading effect of any stage so 
Av2=60
load1=Rc*Rin/(Rc+Rin)
Av1=Av2*load1/Rc
Av=Av1*Av2

printf("total gain = %.3f \n",Av)
printf("comment : gain of one stage=60.So total gain should be 60*60=%d but here it is %.3f.\nThis is because of loading effect of input impedence of second stage on first stage. \n",60*60,Av)
printf("So gain of first stage decreases.\nHowever, second stage has no loading effect of any next stage.So its gain does not decrease. \n")

// the accurate answer for total gain is 2400 but in book it is given as 2397
