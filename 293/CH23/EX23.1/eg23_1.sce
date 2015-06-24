deltaGi = 420 - 380; //variation in the without feedback gain
Gi = 400; //without feedback gain
T = 400; //transfer function of the closed loop system
// (variation in T)/T = (change in G)/G * (1/ 1+H*G) = 0.02
//1 + H*G  = R
R = (deltaGi/Gi)/0.02; 

G = T*R; //new direct transmission gain with feedback 
H = (G/T - 1)/G; //feedback factor 

disp(G,"new direct transmission gain with feedback = ")
disp(H,"feedback factors = ")