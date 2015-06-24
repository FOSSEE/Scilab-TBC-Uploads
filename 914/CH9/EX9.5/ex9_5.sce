clc;
warning("off");
printf("\n\n example9.5 - pg 393");
// given
n=[0.5 0.6 0.7 0.8 0.9 1.0];
D2=3.806;
D1=0.25;
R=D2/D1;
N1=690;
N2=N1*((D1/D2)^n);
P1=9.33*10^-3;  //[hp]
P2=P1*R^(5-3*n);
printf("\n\n n                         N,rpm                  P,hp");
for i=1:6
printf("\n %f               %f            %f",n(i),N2(i),P2(i));
end

