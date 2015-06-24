//Example 2.19 //Angular sepration
clc;
clear;
//given data
n=1;// order of spectrum
wi=.5;// width of grating in cm
N=2500;//total no. of lines 
c=wi/N;//grating element
w1=589D-7;// first wavelength of sodium in cm
//part a
theta1=asin(n*w1/c)//angular width in radian
theta1=theta1*180/%pi;//angular width in degree
disp(theta1,"angular width in degree")
w2=5896D-8;//second wavelength of sodium in cm
//part b
theta2=asin(n*w2/c)//angular width in radian
theta2=theta2*180/%pi;//angular width in degree
disp(theta2,"angular width in degree")
theta=theta2-theta1;//angular sepration degree
disp(theta,"angular sepration in degree")
w=(w1+w2)/2;//mid wavelength
dw=6D-8;// change of wavelength in cm
n=1;//order of spectrum
N=w/(n*dw);//no. of lines will appear
N=floor(N);// N should be integer
if(1/c>N)
    disp(N,"No. of lines will appear")
else
    disp("they can not be seen differently ")
end
