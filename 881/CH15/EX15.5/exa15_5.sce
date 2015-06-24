clc;
//Example 15.5
//Page No 651



//solution

f=6;
a=0.03;
c=3*10^8;

disp("(a)The cutoff frequency is determined by substituting into equation 15-41, ");

fc=(c/(2*a));

fc=fc/10^9;

disp('GHz',fc,"fc = ");

disp("(b)The cutoff wavelength is determined by substituting into equation 15-42, ");

lc=2*(a);

disp('m',lc,"lc = ")

disp("(c)The phase velocity is found using equation 15-41, ");

vph=(c/[sqrt(1-({fc/f}^2))]);

disp('m/s',vph,"vph = ");

disp("(d)The group velocity is found by rearranging equation 15-36, ");

vg=([c^2]/vph);

disp('m/s',vg,"vg = ");
