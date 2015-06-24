clear;
clc;

E=11e3/sqrt(3);
E1=complex(E*cosd(0), E*sind(0));
E2=complex(E*cosd(40), E*sind(40));
Z=complex(0,15);
I=(E1-E2)/Z;

if (real(I)<0)     then
      mprintf("E1=generator, E2=motor");
    else 
        mprintf("E2=generator, E1=motor");
end

S1=3 * E1 *1e-6* conj(I);
S2=3 * E2 *1e-6* conj(I);

mprintf("\n\n(a)Real Power consumed by E2= %.3f MW,\nPower delivered by E1= %.3f MW", -1*real(S2), -1*real(S1) );
mprintf("\n\n(b) Reactive Power supplied by E1= %.3f MVAr,\nPower supplied by E2= %.3f MVAr", imag(S1),imag(S2)*-1 );
mprintf("\n\n(C) Reactive Power absorbed by line= %.3f MVAr", 2* imag(S1) );
