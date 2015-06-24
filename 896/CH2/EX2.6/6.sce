clc
//calc atm pressure on a storage tank roof
p_atm=14.7;//psia
//diameter of roof is 120ft
d_roof=120;//ft
//force=(pressure)*(area)
f_roof=p_atm*(%pi)*d_roof^2/4*144;//lbf ;144 because 1ft=12inch
disp("Force exerted by atmosphere on the roof is")
disp(f_roof)
disp("lbf")