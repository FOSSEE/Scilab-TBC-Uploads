// Chapter 11 example 15
//------------------------------------------------------------------------------
clc;
clear;
// Given data
a       = 20000;            // semi major axis of elliptical sate. orbit in kms
b       = 16000;            // semi minor axis of elliptical sate. orbit in kms

// calculations
// a = (ra + rp)/2
// b = sqrt(ra*rp)
// let k = (ra + rp)
// let l = ra*rp
k       = 2*a;              // ra+ rp ----------------1
l       = b^2;              // ra*rp -----------------2
// ra^2 -40000ra + 256000000
p       = [ 1 -k l]
x       = roots(p)
r1      = x(1)
r2      = x(2)
rp = k - r1;
mprintf('Apogee distance = %d km\n Perigee distance = %d km',r1,rp);
//------------------------------------------------------------------------------
