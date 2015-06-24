z=%z;
s=%s;
F=0:(0.5/400):0.5;
s=exp(%i*2*%pi*F);
H1Z=(z^2+1-0.618*z)/(z^2-0.5857*z+0.898);
for i=1:401
    H1(i)=(s(i)^2+1-0.618*s(i))/(s(i)^2-0.5857*s(i)+0.898);
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
