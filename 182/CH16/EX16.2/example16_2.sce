// to find the maximum and minimum output voltages in the fig 16-8(b)
// example 16-2 in page 428
clc;
//Data given
Vz=6; R=1000*[0 5.6 5.6 3];// zener voltage and the resistance values
A=['when the moving contact is at the bottom of R4' '0' '0' 'when the moving contact is at the top of R4'];
//calculation
for n=1:3:4
    I3=Vz/(R(3)+R(n));
    Eo=I3*sum(R);
    printf("%s,Eo=%.1f V\n",A(n),Eo);
end
//result
//when the moving contact is at the bottom of R4,Eo=15.2 V
//when the moving contact is at the top of R4,Eo=9.9 V