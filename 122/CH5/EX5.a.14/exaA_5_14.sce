// Example A-5-14
// Response to unit acceleration r = (1/2) * t^2

clear; clc;
xdel(winsid());  //close all windows

// please edit the path
// cd "/<your code folder>/Codes/chapter_5"
// exec("plotresp.sci")

s = %s;
G = syslin('c', 2, s^2 + s + 2);
t = 0:0.05:10;
r = (1/2) * t.^2;
plotresp(r,t,G,'Response to unit accceleration r = (1/2) * t^2');
