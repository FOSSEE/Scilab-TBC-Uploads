//ques-19.13
//Calculating uncertainity in momentum of an electron
clc
x=10^-10;//uncertainity in position (in m)
h=6.6*10^-34;//(in Js)
p=h/(4*%pi*x);
printf("The uncertainity in momentum is %.2f*10^-25 kg m/s.",p*10^25);
