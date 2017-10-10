//chapter 17 Ex6

clc;
clear;
close;
s1=25;s2=4;    //given speeds in km/hr
function [s]=average(s1,s2)
    s=(2*s1*s2)/(s1+s2);
endfunction

s=average(25,4);
t=5+(48/60);   //converting minutes into hours
d=t*s;         //distance=time*speed
dpost=d/2;
printf("The distance of post office from village is %2.0f km",dpost);
