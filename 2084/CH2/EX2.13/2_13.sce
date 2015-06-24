//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.13
//calculation of average focal length of concave mirror considering uncertainity

//given data
fi=[25.4 25.2 25.6 25.1 25.3 25.2 25.5 25.4 25.3 25.7]; //focal length(in cm)
N=length(fi);

//calculation
fbar=mean(fi) //average of fi
fnew=fi-fbar;
sfnew=sum(fnew.*fnew)
sigma=sqrt(sfnew/N) //uncertainity(in cm) in focal length

printf("the focal length of the given concave mirror(in cm) is %f or %f",fbar+sigma,fbar-sigma);
