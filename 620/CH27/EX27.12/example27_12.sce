l=100*10^(-6);
c=50*10^(-12);
r=100*10^3;
v=50*10^(-3);
fr=1/(2*%pi*sqrt(l*c));
x_l=2*%pi*fr*l;
q=r/x_l;
f=fr/q;
disp("the bandwidth (in kHz) is"); disp(f*10^(-3));