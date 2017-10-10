// To calculate the number of turns per limb on the high and low voltage sides

clc;
clear;

f=50;
A=400*(10^-4);
Bm=1;
V1=3000;
V2=220;

l=2; // Number of limbs

//Neglecting the series voltage drop

// Induced EMF equation
a=V1/(4.44*f*A*Bm);

b=V2*a/V1;

if(modulo(round(a),2)==0) // No. of turns is a whole even number as it has 2 limbs
    N1=round(a);
else
    N1=round(a)+1;
end

if(modulo(round(b),2)==0) // No. of turns is a whole even number as it has 2 limbs
    N2=round(b);
else
    N2=round(b)+1;
end

printf('The number of turns in the high voltage side per limb = %d \n',N1/l)
printf('The number of turns in the low voltage side per limb = %d \n',N2/l)
