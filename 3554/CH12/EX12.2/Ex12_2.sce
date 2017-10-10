// Exa 12.2

clc;
clear all;

// Given data

fre=20; // in Hz
Time_base=5*10^-3; // in 

// Solution

Period=1/fre;  // in sec
// Since period= timebase/ chart speed;
Chart_speed=Time_base/Period; // in mm/sec

printf(' The chart speed used to record one complete cycle on 5mm of recording paper  =%.1f mm/sec \n',Chart_speed*10^3);
