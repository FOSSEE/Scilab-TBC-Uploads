z=%z;
s=%s;
F=0:(0.5/400):0.5;
s=exp(%i*2*%pi*F);
H1Z=(z^4+1)/(z^4+1.6982*z^2+0.7210);
for i=1:401
    H1(i)=(s(i)^4+1)/(s(i)^4+1.6982*s(i)^2+0.7210);
end
H1=abs(H1);
plzr(H1Z);
a=gca();
xset('window',1);
a.x_location="origin";
a.y_location="origin";
plot2d(F,H1)
xlabel('Digital frequency F');
ylabel('magnitude');
xtitle('Magnitude spectrum of bandpass filter');
