//Determine frequency range occupied by the sidebands

L = 50e-6;
C = 1e-9;

f = 1/(2*%pi*sqrt(L*C));

f1 = f-10000;
f2 = f+10000;

disp(f, 'Frequency range occupied by the sidebands is (in Hz)')
disp(f1, 'Frequency range extending from ')
disp(' Hz ', f2, 'to' )