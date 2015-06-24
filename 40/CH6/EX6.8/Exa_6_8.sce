//Digital Resonator design with peak gain 50 HZ 
//and 3 db bandwidth of 6HZ at sampling of 300 HZ
clf();
s=%s;
F=0:150;
f=F/300;
s=exp(%i*2*%pi*f);
for i=1:151
    H1(i)=(0.1054*(s(i)^2))/(s(i)^2-0.9372*s(i)+0.8783);
end
H1=abs(H1);
H2=H1(40:60);
F1=40:60;
f1=F1/300;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(F,H1)
xlabel('Analog frequency F');
ylabel('magnitude');
xtitle('Magnitude spectrum of digital resonator with peak 50HZ');
xset('window',1);
a.x_location="origin";
a.y_location="origin";
plot2d(F1,H2)
xlabel('Analog frequency F');
ylabel('magnitude');
xtitle('passband detail');