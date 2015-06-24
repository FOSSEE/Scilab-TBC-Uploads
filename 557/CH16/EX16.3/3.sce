clc; funcprot(0); //Example 16.3 

//Initializing the variables
a =0.5;
b = 0.5;
Dn = 1.2;
s = 1/1000;
C = 55;
g = 9.81;

//Calculations
c = (1 + a)/b; 
QbyB = Dn*C*sqrt(Dn*s);
q = QbyB;
Dc = (q^2/g)^(1/3);

m = 2.4:-0.15:1.35;
total = 0;Dm = 0; N = 0;  D = 0; Lm = 0;
for(i=1:length(m)-1)
    
    Dm(i)= (m(i)+m(i+1))/2; 
    N(i) = 1 - (Dc/Dm(i))^3 ;    // Numerator
    D(i) = 1 - (Dn/Dm(i))^3; // Denominator
    Lm(i) = 150*(N(i)/D(i));
    total = total +Lm(i);
end
result  = [Dm N D Lm];
disp(total,"distance upstream covered (approx in m):",result,"Mean Depth(Dm) Numerator Denominaotor      L(m)");
