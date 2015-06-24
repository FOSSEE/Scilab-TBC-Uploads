//Chapter 3, Problem 2
clc
//https://atoms.scilab.org/toolboxes/microwave
//Download and install the Microwave toolbox from above link and load it from scilab menubar > Toolboxes > microwave

funcprot(0)

// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

// [R1, Theta1] = z2p(A1) - Display polar form of complex matrix.
function [R1, Theta1] = z2p(A1)
     Theta1 = atan(imag(A1),real(A1))*180/%pi;
     R1=sqrt(real(A1)^2+imag(A1)^2)
endfunction

//Plot the smith chart 
uW_display_smith([.2 .5 1 2 5],12);
Z=0.8-%i*1.6;                               //impedance
Z1=50*Z;                                    //50 = characteristic impedance
[Zm,Za]=z2p(Z);
G=(Z1-50)/(Z1+50);                          //reflection coefficient
Ym=1/Zm                                     //admittance (magnitude)
Ya=Za*(-1)                                  //admittance (angle)
Y=p2z(Ym,Ya)
Y1=50*Y;
R=(Y1-50)/(Y1+50);
R2=0
plot2d(real(R2),imag(R2),-1);

plot2d(real(G),imag(G),-8);
plot2d(real(R),imag(R),-8);
xtitle("Smith Chart");
printf("Admittance value, Y = %.2f + j%.1f",real(Y),imag(Y));
