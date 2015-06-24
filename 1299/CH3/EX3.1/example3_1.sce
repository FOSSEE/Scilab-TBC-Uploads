 //Example 3.1
 //type of the system
clear; clc; 
xdel(winsid());

// fig(3.14)
s=%s;
n1=(2);
d1=((s)*(s^2+2*s+2));
A=n1/d1
disp("since one integration is being observed, it is TYPE 1 system")

//fig(3.15)
s=%s;
n2=(5);
d2=((s+2)*(s^2+2*s+3));
B=n2/d2
disp("since no integration is being observed, it is TYPE 0 system")

//fig(3.16)
s=%s;
n3=(s+1);
d3=((s^2)*(s+2));
C=n3/d3
disp("since two integration is being observed, it is TYPE 2 system")
