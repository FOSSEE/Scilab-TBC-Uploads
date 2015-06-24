// Initilization of variables
W1=1000 //N // Load acting at the end pannels and the ridge
W2=2000 //N // Load acting at the intermidiate pannels
Laf=1 //m
Lgf=1 //m
Lag=2 //m
Lbg=1 //m
Lab=3 //m
theta=30 //degree // angle made by the principal rafter with the tie beam
beta=60 //degree // angle made by the slings (i.e members CF & CG) with the tie beam
// Calculations
// consider the equilibrium of the entire truss as a F.B.D
Xa=2*(W1*sind(theta))+(W2*sind(theta)) //N // sum Fx=0
Rb=((W2*Laf*cosd(theta))+(W1*Lag*cosd(theta)))/Lab // N // Moment at A=0
Ya=2*(W1*cosd(theta))+(W2*cosd(theta))-(Rb) //N // sum Fy=0
// Now pass a section through the truss such that it cuts the members CE,CG & FG. Now consider the equilibrium of the right hand side of the truss
// Take moment about C
Ffg=(Rb*(Lbg+0.5))/(0.5*tand(beta)) // N // (T) // Here 0.5 is the half distance of Lgf
// Take moment about G
Fce=(-Rb*Lbg)/(Lbg*sind(theta)) // N // (C)
// Take moment about B
Fcg=0/(Lbg*sind(beta)) // N
// Results 
clc
printf('The axial force in the member FG (Ffg) is %f N \n',Ffg)
printf('The axial force in the member CE (Fce) is %f N \n',Fce)
printf('The axial force in the member CG (Fcg) is %f N \n',Fcg)
