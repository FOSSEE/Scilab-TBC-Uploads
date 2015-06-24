clc
//Initialization of variables
p=14.696 //psia
ps=0.0505  //psia
ps2=0.5067 //psia
phi2=0.5
phi=0.6
grain=7000
//calculations
pw=phi*ps
w1=0.622*pw/(p-pw)
pw2=phi2*ps2
w2=0.622*pw2/(p-pw2)
dw=w2-w1
dwg=dw*grain
//results
printf("change in moisture content = %.6f lbm water/lbm dry air",dw)
printf("\n in grains, change = %.3f grains water/lbm dry air",dwg)
