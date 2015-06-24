
clc;
clear all;
//part a
h=300;//height of transmitting antenna in feet
Dt=sqrt(2*h);//radio horizon distance
disp(Dt,'radio horizon distance of transmitting antenna in miles is=');
//part b
h=140;//height of receiving antenna in feet
Dr=sqrt(2*h);//radio horizon distance
disp(Dr,'radio horizon distance of receiving antenna in miles is=');
//part c
Dm=Dt+Dr;
disp(Dm,'maximum space wave commmunication distance in miles for signals');

