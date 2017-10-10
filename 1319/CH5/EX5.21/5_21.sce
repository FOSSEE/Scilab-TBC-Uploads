//To calculate secondary terminal voltage and full load efficiency at unity pf

clc;
clear;

P=4*(10^3);
E1=200;
E2=400;

// O.C Test
V=200;
Pil=70; // Iron Loss
Ioc=0.8;

R0=(V^2)/Pil;

Iw=V/R0;
Im=sqrt((Ioc^2)-(Iw^2));

X0=V/Im;

// S.C Test
Vsc=17.5;
Isc=9;
Psc=50;

R2eq=Psc/(Isc^2);

Z2eq=Vsc/Isc;

X2eq=sqrt((Z2eq^2)-(R2eq^2));

Is=P/E2; // Full load current

Pc=((Is/Isc)^2)*Psc;

fleff=(P*100)/(P+Pil+Pc);// Full load efficiency

printf('i) The Full load efficiency at unity power factor = %g percent \n \n',fleff)

// Secondary Terminal voltages cosidering full load secondary current as reference

Vs=poly([0 1],'Vs','c');

Vz=Is*(R2eq+(X2eq*%i));

// Using the characteristic equation in polar form, 'Is' as reference
// E = V/_theta + Is/_0 *(Z/_phi)

// Function to evalulate the right side of the equation in complex form
deff('a=stv(b)','a=Vs*(complex(cosd(b),sind(b)))+Vz')

case1=stv(acosd(1));
case2=stv(acosd(0.8));
case3=stv(-acosd(0.8));

// Funtion to calculate the characteristic equation of Vs
deff('x=svol(y)','x=(real(y)^2)+(imag(y)^2)-(E2^2)')

cs1=svol(case1);
cs2=svol(case2);
cs3=svol(case3);

// Roots of the characteristic equations

r1=roots(cs1);
r2=roots(cs2);
r3=roots(cs3);


// To find the positive roots
if(imag(sqrt(r1(1))))
    Vs1=r1(2);
else
    Vs1=r1(1);
end

if(imag(sqrt(r2(1))))
    Vs2=r2(2);
else
    Vs2=r2(1);
end

if(imag(sqrt(r3(1))))
    Vs3=r3(2);
else
    Vs3=r3(1);
end

printf('ii) The Secondary terminal voltages for various power factors are as follows \n')
printf('a) At Unity power factor, Vs = %g V \n',Vs1)
printf('b) At 0.8 power factor(Lagging), Vs = %g V \n',Vs2)
printf('c) At 0.8 power factor(Leading), Vs = %g V \n',Vs3)

    
