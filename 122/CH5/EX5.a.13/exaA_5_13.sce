// Example A-5-13
// Response to input r = 2 + t

clear; clc;
xdel(winsid());  //close all windows

// Please edit the path
// cd "/<your code folder>/Codes/chapter_5";
// exec("plotresp.sci")

s = %s;
G = syslin('c', 5, s^2 + s + 5);
t = 0:0.05:10;
r = 2 + t;
plotresp(r,t,G,'Response to input r = 2 + t');
