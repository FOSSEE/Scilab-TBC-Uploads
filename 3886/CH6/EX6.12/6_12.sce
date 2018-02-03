//required effort
//differential axle diameters
d1=300  //mm
d2=250  //mm
//wheel diameter
D=800  //mm
//load
W=20000  //N
eta=0.55
VR=(2*D)/(d2-d1)
MA=eta*VR
P=W/MA  //N
printf("Required effort =%0.1f N",-P)
