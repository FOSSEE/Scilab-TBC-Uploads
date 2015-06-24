
clc;
R=5*10**3;
C=0.1*10**-6;
f1=1/(2*%pi*R*C);
disp('HZ',f1*1,"f1=");
i=-21:3:0;
plot2d(i);
a=gca() //get the current axes
a.box="off";
a.x_location="top";
xlabel("f (log scale)");
ylabel( "Av(dB)");
