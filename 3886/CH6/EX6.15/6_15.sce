//Screw jack parameters
p=10  //mm
d=50  //mm
W=6000  //N
theta=atand(p/(%pi*d))  //degree
fi=atand(0.05)  //degree
R=300  //mm
P=(d*W*tand(theta+fi))/(2*R)  //N
VR=(2*%pi*R)/(p)
MA=W/P
eta=MA*100/VR  //percent
//torque required to keep the load from descending
T=(50*600*tand(3.6426-2.8624))/2  //N-mm
printf("Efficiency eta=%0.2f percent > 50 percent\nThus the screw jack is not self locking\nTorque required to keep the load from descending T=%0.2f N-mm",eta,T)
