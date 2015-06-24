//To Determine the distance at which the regulator must be located
//Page 472
clc;
clear;

//Terms from previous example
TVDpu=0.0776; //Total Voltage Drop
VRRpu=1.035; //Setting Voltage of Regulator
l=10;//Length of the Feeder

//Primary voltages for various cases
VPpua=1.01;
VPpub=1.00;

s1=poly(0,'s1'); //Variable Value of Regulator length
//Function to find the equation for the regulator distance
deff('x=dist(y)','x=(s1*(2-(s1/l))/l)-((VRRpu-y)/TVDpu)') 

//Different Cases
Xa=dist(VPpua);
Xb=dist(VPpub);

s1a=roots(Xa);
if((abs(l-s1a(1))+(l-s1a(1)))==0)
    s1a=s1a(2);
else
    s1a=s1a(1);
end

s1b=roots(Xb);
if((abs(l-s1b(1))+(l-s1b(1)))==0)
    s1b=s1b(2);
else
    s1b=s1b(1);
end

printf('\na) The Regulator must be placed at %g miles from the start of the feeder\n',s1a)
printf('b) The Regulator must be placed at %g miles from the start of the feeder\n',s1b)
printf('c) The Advantage of a over b is that it can compensate for future growth\n')
