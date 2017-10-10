clear
//
//applying kvl to circuit
i=0.414
vth=12-4*0.414 //using vth formula
//when terminals a and b are short circuited applying kcl to node a gives isc=5*i
isc=2.07
rth=vth/isc
printf("\n rth= %0.1f  A",rth)
