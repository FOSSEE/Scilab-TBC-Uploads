// Polar to cartesian co ordinate conversion

function [x,y] = pol2cart(theta,r)
x = r*cos(theta);
y = r*sin(theta);
endfunction;
