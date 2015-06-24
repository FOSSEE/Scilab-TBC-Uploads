//Single-Sideband Communications : example 4-1 : (pg 172 & 173)
x=1*10^6;
y=10^(80/20);
z=sqrt(y);
df=200;
Q=(x*z)/(4*df);
a=100*10^3;
Q1=(a*z)/(4*df);
disp(Q1);
//part(a) : Q when 1-MHz & 80-dB sideband suppression
printf("\nQ1 = fc.(log^-1(dB/20)^1/2)/4*delta(f) = %.f",Q);
//part(b) : Q when 100-kHz & 80-dB sideband suppression
printf("\nQ2 = fc.(log^-1(dB/20)^1/2)/4*delta(f) = %.f",Q1);