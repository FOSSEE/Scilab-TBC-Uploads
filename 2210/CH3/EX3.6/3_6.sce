//Chapter 3, Problem 6
clc
//https://atoms.scilab.org/toolboxes/microwave
//Download and install the Microwave toolbox from above link and load it from scilab menubar > Toolboxes > microwave

funcprot(0)

// [R1, Theta1] = z2p(A1) - Display polar form of complex matrix.
function [R1, Theta1] = z2p(A1)
     Theta1 = atan(imag(A1),real(A1))*180/%pi;
     R1=sqrt(real(A1)^2+imag(A1)^2)
endfunction

function Zin = zin(d)
    B=2*%pi*d
    Zin=Zo*((Zl+(%i*Zo*tan(B)))/(Zo+(%i*Zl*tan(B))))
endfunction

Zo=50                               //characteristic impedance
Zl=40-%i*80                         //load impedance
//line
d1=0.096
d2=0.173
d3=0.206

refl=(Zl-Zo)/(Zl+Zo)                        //reflection coefficient
[reflm,refla]=z2p(refl)
SWR=(1+reflm)/(1-reflm)                     //standing wave ratio
Zin1=zin(d1)
Zin2=zin(d2)
Zin3=zin(d3)
////load impedance is expressed in normalised form
a=Zl/Zo
d=0.25-%i*0.5
f=0.2+%i*0
h=0.2+%i*0.2
j=0.25-%i*0.5


//Plot the smith chart 
uW_display_smith([.2 .5 1 2 5],12);
Z=[a d f h j]
for n=1:length(Z)
    Z1=50*Z(n)
    G=(Z1-50)/(Z1+50);
plot2d(real(G), imag(G),-8);
end;
R2=0
plot2d(real(R2),imag(R2),-1);

//Plot a VSWR circle of radius 0.667
x=linspace(0,2*%pi,200);
plot2d(0.66*cos(x),0.66*sin(x))
xtitle("Smith Chart");

printf("The input impedance Zin of the terminated line \n\n")
printf("(a) 0.096h = %.2f %.2fj\n\n",real(Zin1),imag(Zin1))
printf("(a) 0.173h = %.2f + %.2fj\n\n",real(Zin2),imag(Zin2))
printf("(a) 0.206h = %.2f + %.2fj\n\n",real(Zin3),imag(Zin3))
