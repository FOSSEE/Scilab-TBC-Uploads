//Chapter 3, Problem 13
clc

//https://atoms.scilab.org/toolboxes/microwave
//Download and install the Microwave toolbox from above link and load it from scilab menubar > Toolboxes > microwave

funcprot(0)
// [R1, Theta1] = z2p(A1) - Display polar form of complex matrix.
function [R1, Theta1] = z2p(A1)
     Theta1 = atan(imag(A1),real(A1))*180/%pi;
     R1=sqrt(real(A1)^2+imag(A1)^2)
endfunction

zin=100                         //input resistance in ohm
zo=50                           //amplifier input resistance in ohm
cl=5e-12                        //capacitance in farad
f=10^9                           //frequency in hertz
d=1+(%i*2.3)                        //point C
h=0-(%i*2.3)                        //point E

//Calculation
Yo=1/zo
Yl=(1/zin)+(%i*2*%pi*f*cl)
Y=Yl/Yo

//Plot the smith chart 
uW_display_smith([.2 .5 1 2 5],12);
Y1=50*Y;
R=(Y1-50)/(Y1+50);
R2=0
[Rm,Ra]=z2p(R)
plot2d(real(R),imag(R),-8);
plot2d(real(R2),imag(R2),-1);
y=[d h]
for n=1:length(y)
    y1=50*y(n)
    R1=(y1-50)/(y1+50);
plot2d(real(R1), imag(R1),-8);
end;

//Plot a VSWR circle of radius 0.667
x=linspace(0,2*%pi,200);
plot2d(Rm*cos(x),Rm*sin(x))
xtitle("Smith chart")

printf("Yl/Yo = %.1f + j %.2f\n\n",real(Y),imag(Y))
