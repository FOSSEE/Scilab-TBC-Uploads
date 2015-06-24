clear ;
clc;

// Example 1.2
printf('Example 1.2\n\n');
//Page no. 17
// Solution

// (a)
// Converting all terms to same unit
ml = 1.61;//[km]
km = (2*1)/(ml);//[miles]
printf('(a) 2 kilometers is equal to %.2f miles.\n',km);

//(b)
in = 2.54;//[cm]
dy = 24*60;//[min]
nw_unit = (400*(in)^3*1)/(1*dy);//[cubic centimetre/min]
printf(' (b) 400 cubic in./day is equal to %.2f cubic centimetre/min.',nw_unit);