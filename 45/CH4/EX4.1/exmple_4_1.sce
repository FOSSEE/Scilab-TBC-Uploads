//example 4.1 
clc;
clear;
disp('Logic equation for 2-to-1 Multiplexer :')
printf(' Y = A''D0 + AD1\n');
disp('Logic equation for 4-to-1 Multiplexer :')
printf(' Y = A''B''D0 + A''BD1 + AB''D2 + ABD3\n');
disp('This can be rewritten as,')
printf(' Y= A''(B''D0 + BD1) + A(B''D2 + BD3)\n');
disp('Compare this with equation of 2-to-1 mux. We need two 2-to-1 multiplexer to realize the bracketed terms where B serves as select input. The output of these two multiplexers can be sent to a third multiplexer as data inputs where A serves as select input and we get the 4-to-1 multiplexer.');