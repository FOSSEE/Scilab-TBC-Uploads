
clear;
clc;

printf("\t Example 5.7\n");

//w=2*3.14 rad/yr , a=w*t=0 at present.first we find the depths at which a=0 curve reaches its local extrema.(we pick the a=0 curve because it) gives the highest temperature at t=o.).tan(o-e)=1 so e=3%pi/4, 7%pi/4....and the first minima occurs where e=3%pi/4=2.356.

b=0.139*10^-6; //thermal diffusivity, m^2/s

x=2.356/(2*3.14/(2*b*365*24*3600))^0.5;  //depth of digging of earth to find the temperature wave

printf("\t depth of digging of earth is :%.3f m, if we dug in the earth, we would find it growing older until it reached a maximum coldness at a depth of about 2.8 m.Farther down, it would begin to warm up again, but nt much. in midwinter, the reverse would be true \n",x);

//end