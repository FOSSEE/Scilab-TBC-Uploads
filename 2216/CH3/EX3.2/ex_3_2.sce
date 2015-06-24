//Example 3.2 // thickness
clc;
clear;
close;
format('v',6)
n1=3.6;//core refractive index
n2=3.56;//cladding refrative index
h=0.85;//wavelength in µm
a=((h/(2*sqrt(n1^2-n2^2))));//thickness in µm
disp("thicknes of the slab should not be greater than "+string(a)+" µm")
