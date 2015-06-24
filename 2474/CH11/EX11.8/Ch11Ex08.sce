// Scilab code Ex11.8: Pg.494 (2008)
clc; clear;

// Part (a)
t_half = 60;    // Half life time of radioactive source, s
// Since we have t_half = lon(2)*tow, solving for tow, we get
tau = t_half/log(2);    // Mean life time of radioactive source, s
lamda = 1/tau;    // Decay constant, per second
printf("\nThe mean life time of radioactive source = %4.1f s", tau);
printf("\nThe decay constant = %4.2e per second", lamda);

// Part (b)
for t = 1:1:3
    R = 2000*exp(-lamda*t*60);    // Counting rate, counts/s
    printf("\nThe counting rate corresponding to time %2d min = %5.1f counts/s", t, R);
end
t = 10;    // Time, s
R = 2000*exp(-lamda*t*60);    // Counting rate, counts/s
printf("\nThe counting rate corresponding to time %2d min = %4.2f counts/s", t, R);

// Result
// The mean life time of radioactive source = 86.6 s
// The decay constant = 1.16e-002 per second
// The counting rate corresponding to time  1 min = 1000.0 counts/s
// The counting rate corresponding to time  2 min = 500.0 counts/s
// The counting rate corresponding to time  3 min = 250.0 counts/s
// The counting rate corresponding to time 10 min = 1.95 counts/s 