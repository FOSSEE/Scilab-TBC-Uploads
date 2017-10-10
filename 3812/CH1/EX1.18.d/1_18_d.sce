//Example 1.18<d>
//determine the values of power and energy 
clc ;
E=0;
for n=0:200
x(n+1)=(1/2)^n;
end
for n=0:200
E=E+x(n +1)^2;
end
disp(E,'The energy of the signal is; ' );
disp ('since the energy is finite, hence it is energy signal');
