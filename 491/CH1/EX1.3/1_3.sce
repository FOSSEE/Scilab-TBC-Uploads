d1 = 4.5; // diameter in inch
d2 = 6 ; // diameter in inch
A = (%pi/4)*((d2^2)-(d1^2)) // Area
P = 140 ; // pressure in K
s = -P/A ; // stress (compression)
E = 30000 ; // young's modulus in Ksi
e = s/E ; // strain
// Part (a)
del = e*4*12  // del = e*L ;
disp(del,"Change in length of the pipe is")
// Part (b)
v = 0.30; // Poissio's ratio
e_ = -(v*e)
disp(e_,"Lateral strain in the pipe is")
// Part (c)
del_d2 = e_*d2 ;
del_d1 = e_*d1;
disp("inch",del_d1,"Increase in the inner diameter is ")
// Part (d)
t = 0.75;
del_t = e_*t ;
disp("inch",del_t,"Increase in the wall thicness is")
del_t1 = (del_d2-del_d1)/2 ;
disp("del_t1 = del_t")



