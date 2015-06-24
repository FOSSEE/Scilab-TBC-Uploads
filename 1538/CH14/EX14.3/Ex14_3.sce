//example-14.3
//page no-442
//given
//elastic moduli of carbon fibre and epoxy resin
Ef=430  //GPa
E=3.6  ///GPa
//modular ratio
Pf=Ef/E
//part(a)
Vf1=0.15
Vm1=1-Vf1
R1=Vm1/Vf1
Pc1=Pf+R1
volume_fibre1=Pf/Pc1
//part(b)
Vf2=0.65
Vm2=1-Vf2
R2=Vm2/Vf2
Pc2=Pf+R2
volume_fibre2=Pf/Pc2
printf ("the fraction of load carried by fibre in carbon-epoxy matrix composite containing 15 percent fibre by volume is %f\n and that by 65 percent fibre by volume is %f",volume_fibre1,volume_fibre2)
