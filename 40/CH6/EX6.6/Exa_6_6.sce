//Frequency Response and filter characteristics
z=%z;
F=0:(0.5/200):0.5;
z=exp(%i*2*%pi*F);
H1=(1/3)*(z+1+z^-1);
H2=(z/4)+(1/2)+(1/4)*(z^-1);
H1=abs(H1);
H2=abs(H2);
a=gca();
a.x_location="origin";
subplot(211);
plot2d(F,H1);
xlabel('Digital frequency F');
ylabel('impuse function H1(f)');
subplot(212);
plot2d(F,H2);
xlabel('Digital frequency F');
ylabel('impuse function H1(f)');