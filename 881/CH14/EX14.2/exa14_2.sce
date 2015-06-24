clc;
//Example 14.2
//Page No 597



//Solution

//(a)

d=48.7;
ht=40;

disp("(a)As per equation 14-23, ");

hr=(((d-sqrt(17*ht))^2)/17);

hr=round(hr);

disp('m',hr,"hr = ");

//(b)

Ht=2*ht;
Hr=2*hr;

D=((sqrt(17*Ht))+(sqrt(17*Hr)));

disp('km',D,"(b)Dmax = ");
