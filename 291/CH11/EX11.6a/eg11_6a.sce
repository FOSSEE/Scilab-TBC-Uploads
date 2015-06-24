X= [66 72 81 94 112 116 124 140 145 155];
D= 0.4831487;
n= 10;
Dgiven = 1.480;
Dstar = (sqrt(n) + 0.12 + (0.11/sqrt(n)))*D;
disp(Dstar, "Dstar is ");
if(Dstar>Dgiven)
    disp("Null hypothesis is rejected at 2.5% level of significance")
else
    disp("Null hypothesis is accepted at 2.5% level of significance")
end   