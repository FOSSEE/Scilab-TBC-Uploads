//Determine level-crossing rate, avg. duration of fade for a cellular system and a vehicle speed.

f = 900e+6;
c = 3e+8;
v = 6.67;
rho = 0.3162;

lambda = c/f;
fm = v/lambda;
 
n0 = sqrt(2*%pi)*fm;
Tr = (1.105-1)/(n0*rho);
Tr1 = (1/(3*v)) * (rho/sqrt(2*%pi));

disp(n0, 'Level-crossing rate')
disp(Tr, 'Avg. duration of fade (in s)')
disp(Tr1, 'Avg. duration of fade, using appx. exp. (in s)')