// Variable declaration
beta = 0.25

// Calculation
x = [0.894, 0.991, 0.261, 0.186, 0.311, 0.817, 2.267, 0.091, 0.139, 0.083,0.235, 0.424, 0.216, 0.579, 0.429, 0.612, 0.143, 0.055, 0.752, 0.188,0.071, 0.159, 0.082, 1.653, 2.010, 0.258, 0.527, 1.033, 2.863, 0.365,0.459, 0.431, 0.092, 0.830, 1.718, 0.099, 0.162, 0.076, 0.107, 0.278,0.100, 0.919, 0.900, 0.093, 0.041, 0.712, 0.994, 0.149, 0.866, 0.054]
f=[]                                     // list of probability values corresponding to each x
x1=[]

for i = 1:50
    x1(i) = x(i)
end

x=x1

for i = 1:length(x)
    f(i) = (1/0.25) * ( %e^(-x(i)/0.25) )
end

// Result
plot(x,f,c='ro')
bar(x,f,width=1.0)
title("$Exponential-density-function$") 
xlabel("$decay-time(s)$")
ylabel("$density$")
