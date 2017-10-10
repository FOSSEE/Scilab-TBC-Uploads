clear
//
r=8
l=0.15
f=50
v=230
c=125*10**-6
//case a inductive reactance
xl=2*3.14*f*l
printf("\n xl= %0.1f  ohm",xl)
//case b capacitance reactance
xc=1/(2*3.14*f*c)
printf("\n xc= %0.0f ohm",xc)
//case c complex impedance
//z=r+j(xl-xc)-->on substituting valuees we get z=8+j21.62
//z=((8**2)+(21.62**2))**0.5
printf("\n complex impedance=8+j21.62 at an impedance angle of 69.7")
//impedance angle=taninverse(xl-xr)/r
//case d
v=230
z=23.05
i=v/z
printf("\n current= %0.1f  A",i)
//case e
//(r+jxl)*i=446.8 at 10.66 degrees
printf("\n voltage across coil=446.8 at 10.66 degrees")
//-j*xc*i=25.48*9.98
printf("\n voltage across capacitor=-254.29 at -159.7 degrees")
//case e
printf("\n phase difference between supply and current i is 69.7 lag')
