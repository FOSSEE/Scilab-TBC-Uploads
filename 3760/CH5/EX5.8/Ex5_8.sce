clc;
ef=1.2; // ratio of excitation voltage to rated per phase voltage
i=0.7; // ratio of armature current to rated current
r=0.01; // percentage resistance of motor
x=0.5; //  percentage reactance of motor
// as per the expression given in book
t1=ef^2-(r*i)^2-(x*i)^2-1;
t2=sqrt((2*i*r)^2+(2*i*x)^2);
t3=atand((2*i*r)/(2*i*x)); // terms needed to find out power factor
pf=cosd(asind(t1/t2)-t3); 
printf('Power factor is %f lagging',pf); 
