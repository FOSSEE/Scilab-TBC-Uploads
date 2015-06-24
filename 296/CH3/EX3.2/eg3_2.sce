//p = m*v
//p = h*k; //electron momentum, where h is constant
//E = 0.5*p*p/m
//E = 0.5*h*k*k/m; //electron energy
k = -10:0.01:10; //limits on wave vector k
E = k^2; // E is proportional to square of wave vector
plot(k,E)