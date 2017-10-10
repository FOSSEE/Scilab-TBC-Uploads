clear
//
//from phasor diagram vac=vab+vbc
hcab=60
vcab=60
hcbc=45
vcbc=77.94 //vbc=60*sin(60)
p=(vcab+hcbc)**2
q=vcbc**2
vac=((p+q)**0.5)
printf("\n vac= %0.1f  v",vac)
//the angle is given by ang=taninverse(vcbc/(vcab+hcbc))=36.59
printf("\n phase position with respect to vbc=60-36.59=23.41")
