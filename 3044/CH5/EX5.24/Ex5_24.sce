// Variable declaration
l = [67,48,76,81]                // list of observations

// Calculation

// As we know Normal scores
m1 = -0.84
m2 = -0.25
m3 = 0.25
m4 = 0.84

l = gsort(l,'g','i')
f = [m1,m2,m3,m4]                // List of normal scores

// Result
plot(f,l,"ro")
title("SimpleNormalScorePlot")
xlabel("$NormalScore$")
ylabel("$OrderedObservation$")
