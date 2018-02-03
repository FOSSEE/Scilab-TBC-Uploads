//force required to prevent slipping
//refer fig. 5.10
mu=0.25
//assumptions are made and shown in fig.5.10
//F1=mu*N1
//consider equilibrium of block A
C1=(2000)/((0.25*cosd(30))+(0.5))  //N
N1=C1*cosd(30)
//Lami's theorem at joint O gives
P=(C1*sind(90))/sind(120)  //N
C=(C1*sind(150))/sind(120)  //N
//Consider equilibrium of block B for verification
//F2=C2*cosd(60)  N
//N2=2000+C2*sind(60)  N
//LF=mu*N2  N  (limiting friction)
//actual frictional force F2 developed is less than the limiting frictional force hence block B is stationary
//P is the correct answer
printf("Requiref force is\nP=%0.2f N",P)

