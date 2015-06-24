clc;
//Example 24.2
//Page No 988

disp("Given: d1=18.6Km, d=14.4Km, Hn=H1=200meters, n=1");

//solution

d1=18.6; 
d=14.4; 
H1=0.2;
n=1;
c=3*10^8;

disp("From equation 24-10, the height of the nth fresnel zone Hn is, ");

l=(((H1^2)*d)/(n*d1*(d1-d)));

l=l*10^3;

disp('m',l,"l = ")

f=(c/l);

f=f/10^6;

disp('MHz',f,"f = ");
