// q be the charge in coulombs and i be the current in Ampere
 
// i is given by i=(3*t^2-t)
 
//charge is to be found between t=1s and t=2s
 
integrate('3*t^2-t','t',1,2);
 
// the charge between 1s and 2s is 5.5 coulombs
 
q=ans;
 
disp("q=")
disp(q)
units='Coulombs C'
q=[string(q) units];
disp(q)
// in coulombs


// the charge is 5.5 coulombs
