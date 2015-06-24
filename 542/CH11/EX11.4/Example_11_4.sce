//Example 11.4

clear;
clc;

printf("\tExample 11.4\n");

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

xB=0.5;
xT=0.5;

printf("\n\tT(K)");
T=[373 353 363 365 365.1];
disp(T);

i=1;

while i<6
    p0_B(i)=antoine(k1_B,k2_B,k3_B,T(i))*101.325/760;
    p0_T(i)=antoine(k1_T,k2_T,k3_T,T(i))*101.325/760;
    pB(i)=xB*p0_B(i);
    pT(i)=xT*p0_T(i);
    p(i)=pB(i)+pT(i);
    i=i+1;
end
printf("\n\tp0 B")
disp(p0_B);
printf("\n\tp0 T");
disp(p0_T);
printf("\n\tpB");
disp(pB);
printf("\n\tpT");
disp(pT);
printf("\n\tpB+pT");
disp(p);

//since total pressure at 365.1 K is nearly same as 101.3 kPa
printf("\nBoiling temperature is %f K",T(5));

//End