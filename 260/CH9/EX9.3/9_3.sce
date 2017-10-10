//Eg-9.2
//pg-388

clear
clc

a=[1 0 -1 1];
fz=poly(a,'z','c');
r=roots(fz);


//bounds
lb=1;
ub=3;
//using x=2z-b-a/b-a ---using fact that x=z-2 fx roots are obtained from subtracting 2 from fz 
s=r-2;

fx=poly(s,'x',['roots']);
disp(fx)
m=coeff(fx);

for i=1:4
    t0=m(1)*1+1/2*m(3);
    t1=m(2)*1+3/4*m(4);
    t2=1/2*m(3);
    t3=1/4*m(4);
    
end

//considering order greater than 1
fx1=poly([t0 t1],'x','c');
r=roots(fx1);
s=r+2;
fz1=poly(s,'z',['roots']);
fz2=35/4*fz1;



error1=fz-fz2;

//order>2
f2z=poly([15/2 -45/4 5],'z','c');
error2=fz-f2z;


//plotting f vs z
z=.5:.5:3.5;
plot(z,horner(fz,z));
set(gca(),"auto_clear","off")
plot(z,horner(fz2,z));
plot(z,horner(f2z,z));


//errors e vs z
plot(z,horner(error1,z));
plot(z,horner(error2,z));