clc;
//page 12
//problem 1.1

//Given signal u = 2*exp(-3*t) 

//Since the function integral does not accept %inf as limit we need to use approximation by changing variables.

//First the signal is to be expressed in terms of 'x'.

function y=Signal(x); 
y=2*exp(-3*x); 
endfunction;

//We then substitute x = tan(z), and then express the given signal wrt 'z' and not 'x'.

function y=Gmodified(z); 
x=tan(z); 
y=(Signal(x))^2/(cos(z))^2; 
endfunction;

E = intg(0,atan(10),Gmodified)

disp(E,'The energy of this signal is ');
