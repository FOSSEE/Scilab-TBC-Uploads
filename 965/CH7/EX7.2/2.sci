clc;
clear all;
disp("i) displacement thickness to boundary thickness ratio")
disp("velocity distribution: u/U=3y/(2*d)-y^2/(2*d^2)")
disp("d* = integrate (1-3y/(2*d)-y^2/(2*d^2),y,0,d)")
disp("d*/d = 5/12")
disp("displacement thickness to bloundary thickness ratio : d*/d =5/12")
disp("ii) momentum thickness to boundary layer thickness ratio")
disp("th = integrate(u/U*(1-u/U),y,0,d)")
disp("th = integrate(((1-3y/(2*d)-y^2/(2*d^2))*(1-((1-3y/(2*d)-y^2/(2*d^2))),y,0,d)")
disp("thus, th/d = 19/120")
disp(" momentum thickness to boundary layer thickness ratio = 19/120")

