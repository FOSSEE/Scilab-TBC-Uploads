//Example 11.5

clear;
clc;

printf("\tExample 11.5\n");

function[p0]=antoine(k1,k2,k3,T)
    p0=10^(k1-(k2/(T+k3-273)));
    funcprot(0)
endfunction

k1_B=6.90565;
k2_B=1211.033;
k3_B=220.79;

k1_T=6.95334;
k2_T=1343.943;
k3_T=219.377;

//Since total pressure is 101.3 kPa, pB=pT
pB=50.65;
pT=50.65;

printf("\n\tT(K)");
T=[373.2 371.2 371.7 371.9 372];
disp(T);

i=1;

while i<6
    p0_B(i)=antoine(k1_B,k2_B,k3_B,T(i))*101.325/760;
    p0_T(i)=antoine(k1_T,k2_T,k3_T,T(i))*101.325/760;
    xB(i)=pB/p0_B(i);
    xT(i)=pT/p0_T(i);
    x(i)=xB(i)+xT(i);
    i=i+1;
end

printf("\n\tp0 B")
disp(p0_B);
printf("\n\tp0 T");
disp(p0_T);
printf("\n\txB");
disp(xB);
printf("\n\txT");
disp(xT);
printf("\n\tx = xB+xT");
disp(x);

//Since last value is closer to 1, 372 K is the required dew point
printf("\nDew point can be taken as %f K",T(5));

//End
