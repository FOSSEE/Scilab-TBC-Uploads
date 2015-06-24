//Chapter 3, Problem 4
clc
//https://atoms.scilab.org/toolboxes/microwave
//Download and install the Microwave toolbox from above link and load it from scilab menubar > Toolboxes > microwave

//Plot the smith chart 
uW_display_smith([.2 .5 1 2 5],12);
r=0.667                                         //radius of VSWR circle
Z=0.21+%i*0.21;                              //impedance
Z1=50*Z;                                   //50 = characteristic impedance
G=(Z1-50)/(Z1+50);                         //reflection coefficient
R2=0
plot2d(real(R2),imag(R2),-1);
plot2d(real(G),imag(G),-8);

//Plot a VSWR circle of radius 0.667
x=linspace(0,2*%pi,200);
plot2d(r*cos(x),r*sin(x))
xtitle("Smith Chart");


printf("From smith chart, The answer is %.2f + j%.2f",real(Z),imag(Z))
disp("This is shown as point E in Figure 3.11.")
