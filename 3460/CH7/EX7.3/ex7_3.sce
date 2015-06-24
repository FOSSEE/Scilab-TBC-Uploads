clc;
clear all;
h=80;//height of transmitting antenna antenna
Dt=4*sqrt(h);//radio horizon distance
disp(Dt,'radio horizon distance of transmitting antenna in km is=');
h=40;//height of receiving antenna
Dr=4*sqrt(h);//radio horizon distance
disp(Dr,'radio horizon distance of receiving antenna in km is=');
Dm=Dt+Dr;
disp(Dm,'maximum space wave commmunication distance in km for signals');

