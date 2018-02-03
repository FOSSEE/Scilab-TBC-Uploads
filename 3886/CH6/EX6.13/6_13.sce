//Effort required
D=500  //mm
d=200  //mm
W=5000  //N
eta=0.6
VR=2*D/(D-d)
MA=eta*VR
P=W/MA  //N
printf("Required effort=%0.0f N",P)
