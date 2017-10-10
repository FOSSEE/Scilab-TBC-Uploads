// Exa 10.7
// To determine the minimum delay difference to successfully resolve the multipath components and operate the Rake receiver

clc;
clear all;

SR=3.84; //spreading rate in Mcps

//solution
disp("In order to resolve multipath components, the chip    duration should be equalto or greater than T(tau), where T is deﬁned as ratio of delay distance to speed to electromagnetic wave");
ChipDur=1/(SR*10^6);
Speed=3*10^8;
Dd=ChipDur*Speed;
disp("");
printf('Minimum delay distance to successfully resolve the multipath components and operate the Rake receiver is %d m \n',Dd);
