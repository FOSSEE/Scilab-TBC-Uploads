// Scilab Code Ex1.25 Decay of muon: Pg: 31 (2008)
c = 3e+08;    // Speed of light, m/s 
v = 0.992*c;    // Relativistic speed of muon, m/s
S = 60*1e+03;    // Distance travelled by muon before it decays, m
t_prime = S/v;    // Time measured by observer on earth (Dilated Time), s
t = t_prime*sqrt(1 - (v/c)^2);    // Time measured by muon in its own frame, s  
s = v*t;    // Distance covered by the muon in its own frame of reference, m   
printf("\nThe time measured by observer on earth (Dilated Time) = %5.3e s", t_prime);
printf("\nThe time measured by muon in its own frame = %4.2e s", t);
printf("\nThe distance covered by the muon in its own frame of reference = %4.2f km", s/1e+03);
// Result 
// The time measured by observer on earth (Dilated Time) = 2.016e-004 s
// The time measured by muon in its own frame = 2.55e-005 s
// The distance covered by the muon in its own frame of reference = 7.57 km 