//Periodic notch filter design at 60 HZ and sampling frequency 300HZ
z=%z;
f=0:(0.5/400):0.5;
z1=exp(%i*2*%pi*f);
for i=1:401
    H1Z(i)=(z1(i)^5-1)/((z1(i)^5)-(0.9^5));
    H2Z(i)=(z1(i)^5-1)/((z1(i)^5)-(0.99^5));
end
H1Z=abs(H1Z);
H2Z=abs(H2Z);
N1z=(1-z^-5)/(1-z^-1);
H3z=(N1z)/(horner(N1z,z/0.9));
H4z=(N1z)/(horner(N1z,z/0.99));
H3z=horner(H3z,z1);
H4z=horner(H4z,z1);
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(f,H1Z);
plot2d(f,H2Z);
xlabel('Digital frequency f');
ylabel('magnitude');
xtitle('Periodic Notch Filter N=5,R=0.9,0.99');
xset('window',1);
plot2d(f,H3z);
plot2d(f,H4z);
xlabel('Digital frequency f');
ylabel('magnitude');
xtitle('Notch Filter that also passes DC N=5,R=0.9,0.99');
