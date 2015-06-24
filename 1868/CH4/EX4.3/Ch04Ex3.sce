// Scilab code Ex4.3: Pg 117 (2005)
clc; clear;

// Part (a)
delta_y = 0.600;    // Distance of rise or fall of a droplet, cm
t_av = 21.0;    // Average time of fall of droplet, s
delta_t = [46.0, 15.5, 28.1, 12.9, 45.3, 20.0];   // Rise time of the droplet in succession, s
v = delta_y/t_av;   // Average speed of the falling droplet, cm/s
v_prime = zeros(6);
for i = 1:1:6
    v_prime(i) = delta_y/delta_t(i);   // Successive speeds of the rising drops, cm/s   
end

// Calculate charge ratios
q1byq2 = (v+v_prime(1))/(v + v_prime(2));
q2byq3 = (v+v_prime(2))/(v + v_prime(3));
q3byq4 = (v+v_prime(3))/(v + v_prime(4));
q4byq5 = (v+v_prime(4))/(v + v_prime(5));
q5byq6 = (v+v_prime(5))/(v + v_prime(6));
printf("\nq1/q2 = %5.3f", q1byq2);
printf("\nq2/q3 = %5.3f", q2byq3);
printf("\nq3/q4 = %5.3f", q3byq4);
printf("\nq4/q5 = %5.3f", q4byq5);
printf("\nq5/q6 = %5.3f", q5byq6);
printf("\nThe charge ratios are ratios of small whole numbers\n");

// Part (b)
eta = 1.83e-05;                      // Viscosity of air, kg/ms
rho = 858;                        // Oil density, kg/m^3
g = 9.81;                        // Acceleration due to gravity, m/s^2
a = sqrt((9*eta*v*1e-02)/(2*rho*g));   // Radius of oil droplet, m
V = 4/3*(%pi)*a^3;                // Volume of oil droplet, m^3
m = rho*V;                       // Mass of oil droplet, kg
printf("\nRadius of oil droplet = %4.2e m", a);
printf("\nVolume of oil droplet = %4.2e m^3", V);
printf("\nMass of oil droplet = %4.2e kg", m);

// Part (c)
V = 4550;    // Potential difference across the plates of the capacitor, volt
d = 0.0160;    // Distance between the plates
E = V/d;    // Electric field between plates, V/m
q = zeros(6), e = zeros(6);
for i=1:1:6
    q(i) = m*g/E*((v+v_prime(i))/v);    // Charge on first drop, C 
    printf("\nq%d = %4.2e V/m", i, q(i));   
end
e(1) = q(1)/5;
e(2) = q(2)/8;
e(3) = q(3)/6;
e(4) = q(4)/9;
e(5) = q(5)/5;
e(6) = q(6)/7;
e_tot = 0;
for i = 1:1:6
    e_tot = e_tot + e(i);
end
e = e_tot/6;
printf("\nThe average charge on an electron = %5.3e C", e);

// Result
// q1/q2 = 1.105
// q2/q3 = 0.958
// q3/q4 = 1.053
// q4/q5 = 0.899
// q5/q6 = 1.086
// The charge ratios are ratios of small whole numbers

// Radius of oil droplet = 1.67e-06 m
// Volume of oil droplet = 1.96e-17 m^3
// Mass of oil droplet = 1.68e-14 kg 

// q1 = 8.44e-019 V/m
// q2 = 1.36e-018 V/m
// q3 = 1.01e-018 V/m
// q4 = 1.52e-018 V/m
// q5 = 8.48e-019 V/m
// q6 = 1.19e-018 V/m
// The average charge on an electron = 1.694e-019 C 