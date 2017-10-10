//ex2.6  to find characteristic impedence at 2GHz
f=2e9;
w=2*%pi*f;
r=0.1;
l=0.01e-6;
c=100e-12;
g=0.01;
z=sqrt((r+%i*w*l)/(g+%i*w*c));
disp('characteristic impedence Z0 is= '+string(z)+'ohm');
