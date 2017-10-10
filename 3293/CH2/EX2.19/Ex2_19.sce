//page 53
//Example 2.19
clear;
clc;
close;
disp('P = ');
disp('cos(thetha)     -sin(thetha)');
disp('sin(thetha)      cos(thetha)');
disp('Inverse(P) = ');
disp('cos(thetha)       sin(thetha)');
disp('-sin(thetha)      cos(thetha)');
disp('where, thetha is some real number');
disp('The basis for R^2 (B'') is the set consisting of vectors (cos(thetha) , sin(thetha)) and (-sin(thetha) , cos(thetha))');
disp('This basis may be obtained by rotating the standard basis by angle thetha');
disp('a = [x1 x2]');
disp('[a]B'' = ');
disp('|cos(thetha)       sin(thetha)|         *           |x1|');
disp('|-sin(thetha)      cos(thetha)|                     |x2|');
disp('or');
disp('x1'' = x1*cos(thetha) + x2*sin(thetha)');
disp('x2'' = -x1*sin(thetha) + x2*cos(thetha)');
//end
