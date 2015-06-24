// example:-2.5,page no.-36.
// program to compute the poynting vector for the plane wave field.
syms E Eo H k  s n N x r;
E=Eo*exp(-%i*k*r); // electric field.
H=(E/N)*n;  //N is intrinsic impedence,n is unit vector. 
H1=conj(H)  // conjugate of magnetic field.
s=E*H1;
//result
disp(s,'poynting vector is(meter square)=')
disp('which shows that power density is flowing in the direction of propagation.')