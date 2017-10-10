l=200*10^(-6);
r=10;
c=50*10^(-12);
fr=1/(2*%pi*sqrt(l*c));
x_l=2*%pi*fr*l;
q=x_l/r;
f=fr/q;
disp("the bandwidth of the circuit (in kHz) is");disp(f*10^(-3));