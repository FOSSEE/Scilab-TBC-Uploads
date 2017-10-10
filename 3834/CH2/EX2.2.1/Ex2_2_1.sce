//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 2.2.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
c=3E8;//velocity of light in m/sec
n=1.5;//refractive idex of glass

v=(c/n);//light velocity in glass in m/s
mprintf("Light velocity in glass=%.1fx10^8 m/s",v/1e8);
