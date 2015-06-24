
clc;s=%s;
syms K ;
G = s^3+18*s^2+77*s+K;
disp(G);
co0 = coeffs(G,'s',0);
co1 = coeffs(G,'s',1);
co2 = coeffs(G,'s',2);
co3 = coeffs(G,'s',3);
R =[co0 co1 co2 co3];
N = length(R);
routh = [R([4,2]);R([3,1])];

routh = [routh;-det(routh(1:2,1:2))/routh(2,1) 0];
routh = [routh;-det(routh(2:3,1:2))/routh(3,1) 0];
disp(routh);
printf("For K>1386 system is unstable. \n");
printf("For K = 1386 system is marginally stable. \n");
printf("For 0<K<1386 system is stable.")
routh(3,1)=0;//for marginally stable
K = 1386;
disp(K,"Marginal value of K:")
aux = 18*s^2+1386;
Wn = roots(aux);
disp(abs(Wn(1)),"frequency of oscillation in rad/sec:");
