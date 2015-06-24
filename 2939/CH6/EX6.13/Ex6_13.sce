
// Ex6_13
clc;
// Given:
mTh1=232;
mTh2=233;
ETh1=6.4;// in MeV
ETh2=4.93;// in MeV
E=6.5;// fission barrier energy in MeV

// Solution: Part(a)
E1=0*mTh1/mTh2;
Ex1=E1+ETh2;
printf("\n (a) Excitation energy is = %f MeV",Ex1)
if (Ex1>E) then
    printf("\n Fission is possible")
else 
    printf("\n Fission is not possible")
end

// Solution: Part(b)
E2=2*mTh1/mTh2;
Ex2=E2+ETh2;
printf("\n (b) Excitation energy is = %f MeV",Ex2)
if (Ex2>E) then
    printf("\n Fission is possible")
else 
    printf("\n Fission is not possible")
end

// Solution: Part (c)
E3=10*mTh1/mTh2;
Ex3=E3+ETh2;
printf("\n (c) Excitation energy is = %f MeV",Ex3)
if (Ex3>E) then
    printf("\n Fission is possible")
else 
    printf("\n Fission is not possible")
end
