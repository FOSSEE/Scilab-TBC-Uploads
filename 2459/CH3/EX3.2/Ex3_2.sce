//chapter3
//example3.2
//page49

mu=20
rp=8000 // ohm

gm=mu/rp // since mu=rp*gm
gm_micro=gm*10^6 //micro mho
printf("mutual conductance of triode = %f mho or %.3f micro mho",gm,gm_micro)
