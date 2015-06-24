//Chapter 3, Problem 1, Figure 3.4
clc
//https://atoms.scilab.org/toolboxes/microwave
//Download and install the Microwave toolbox from above link and load it from scilab menubar > Toolboxes > microwave


//Plot the smith chart 
uW_display_smith([.2 .5 1 2 5],12);
Z=[0.7-%i*0.2 0.7+%i*0.3 0.3-%i*0.5 0.3+%i*0.3]                 //impedances in matrix form

R2=0
plot2d(real(R2),imag(R2),-1);

for n=1:length(Z)
    Z1=50*Z(n)
    G=(Z1-50)/(Z1+50);
plot2d(real(G), imag(G),-8);
xtitle("Smith Chart");
end;

