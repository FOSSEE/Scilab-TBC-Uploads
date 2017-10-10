//Chapter 27 Ex2
clc;
clear;
close;
 //the ratio of their distances is 7: 4 thus assuming dist of A as 7, dist of B is3
 distA=7; distB=3; //from given conditions
 gain=84;
 distPost=gain/(distB/distA);
 mprintf("The pole must be placed %.0f meter away from starting point",distPost);
