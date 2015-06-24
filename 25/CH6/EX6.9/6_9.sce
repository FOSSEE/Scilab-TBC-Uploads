//example:-6.9,page no.-323.
//program to designa triangular taper and a klopfenstein taper.
taom=0.02;Zl=50;Zo=100;
tao_o=0.5*log(Zl/Zo);
A=acosh(tao_o/taom);
A=real(A);
disp(tao_o,'tao_o = ')
disp(A,'A = ')