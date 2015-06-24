clear;
clc;
printf("\t\t\tExample Number 2.8\n\n\n");
// straight aluminium fin
// illustration2.8
// solution

t = 0.003;// [m] thickness of fin
L = 0.075;// [m] length of fin
Tb = 300;// [degree celsius] base temperature
Tair = 50;// [degree celsius] ambient temperature
k = 200;// [W/m per degree celsius] heat transfer coefficient of aluminium fin
h = 10;// [W/square meter per degree celsius] convectional heat transfer coefficient
// We Will use the approximate method of solution by extending the fin 
// With a fictitious length t/2
// using equation(2-36)
Lc = L+t/2;// [m] corrected length
z = 1;// [m] unit depth
p = (2*z+2*t);// [m] perimeter of fin
A = z*t;// [square meter] crossectional area of fin
m = ((h*p)/(k*A))^(0.5);
// from equation(2-36)
dt = Tb-Tair;// [degree celsius] temperature difference
q = tanh(m*Lc)*((h*p*k*A)^(0.5))*dt;// [W/m] heat transfer per unit length 
printf("heat loss from the fin per unit length is %f W/m",q);
