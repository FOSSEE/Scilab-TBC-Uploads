// current is 2A
//120V
i=2;
v=120;
// v=I*R where R is the resistance in Ohms
r=v/i;
disp("r=")
disp(r)
units='Ohms'
r=[string(r) units];
disp(r)
