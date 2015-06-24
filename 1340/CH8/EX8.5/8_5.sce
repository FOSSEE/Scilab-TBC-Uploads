clc;
s =%s;
syms K ;
G = s^4+7*s^3+14*s^2+(8+K)*s+3*K;
disp(G,"characteristic polynomial:");

co0 = coeffs(G,'s',0);
co1 = coeffs(G,'s',1);
co2 = coeffs(G,'s',2);
co3 = coeffs(G,'s',3);
co4 = coeffs(G,'s',4);

R =[co0 co1 co2 co3 co4];
N = length(R);
routh = [R([5,3,1]);R([4,2]) 0];
D1 = -(routh(1,1)*routh(2,3)-routh(2,1)*routh(1,3));
routh = [routh;-det(routh(1:2,1:2)) D1  0];
routh = [routh;-det(routh(2:3,1:2))/routh(3,1) 0 0];
routh = [routh;-det(routh(3:4,1:2))/routh(4,1) 0 0]
disp(routh,"routh table:");
printf("\n the possibility for imaginary axis roots implies a row of all zeroes ");
printf("\n s1 row should have all zeroes for positive gain K");
routh(4,1)=0;
K = 9.65;
disp(K,"marginal value of K:")
//producing an auxillary polynomial from s2 row
aux = 80.35*s^2+202.65;
Wn = roots(aux);
disp(Wn,"points where root locus intersects jw-axis:");



