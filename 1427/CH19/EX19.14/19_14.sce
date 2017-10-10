//ques-19.14
//Determining minimum error in finding position of an electron
clc
v=600;//speed of electron (in m/s)
a=0.005;//percentage accuracy in speed
dv=v*(a/100);//uncertainity in speed
m=9.1*10^-31;//mass of electron (in kg)
h=6.6*10^-34;//(in Js)
dx=h/(4*%pi*m*dv);
printf("The uncertainity in determining position of the electron is %.5f m.",dx);
