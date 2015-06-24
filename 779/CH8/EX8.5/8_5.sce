N1 = 3000;
w1 = (2*%pi*N1)/60;
I = 0.54;
Ei = 0.5*I*w1^2;
ti = 15+273;
m = 2;
dt = Ei/(1000*2*4.187);
tf = ti+dt;
AE = integrate('m*4.187*(1-(ti/T))','T',ti,tf);
UE = Ei/1000 - AE;
w2 = sqrt(AE*1000*2/I);
N2 = (w2*60)/(2*%pi);
disp(N2,"The final RPM of the flywheel would be")
