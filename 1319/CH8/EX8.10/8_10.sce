//To determine parameters of an 3 phase delta connected 4 pole induction motor

clc;
clear;

V=440;
f=50;
p=4;
E2=150;
Nr=1450;

Ns=120*f/p;

s=(Ns-Nr)/Ns;

rf=s*f; // Rotor frequency

Eir=s*E2; // Rotor induced EMF per phase
gc=1;

// To find the GCD of both the voltages
for i=E2:-1:1
    a=modulo(V,i);
    b=modulo(E2,i);
    if(a==0&b==0)
        gc=gc*i;
        break;
    end
end

printf('The parameters for a motor running at 1450 rpm are \n')
printf('i) The slip = %g percent \n',s)
printf('ii) The frequency of the rotor induced EMF =%g Hz \n',rf)
printf('iii) The rotor induced EMF per phase = %g V \n',Eir)
printf('iv) Stator to rotor turn ratio = %g : %g \n',V/gc,E2/gc)

