//the examples are continuously numbered in textbook. This is the second example in chapter 2 as first example cannot be codded in scilab. 
//Example 2_12 page no:146
clc;
//given
weight = 391000;//in kg
no_of_motor = 12;
no_of_motors_parallel = 6;
tot_tractive_effort = 171000;//in N
line_voltage = 600;//in V
avg_current = 380;//in A
speed = 41.8//in km/h
tot_res = 0.158;//in ohm
acceleration = tot_tractive_effort / (0.2778*weight);
time1 = speed/1.575;
//in full series position
back_emf_series = 300 - ( avg_current * tot_res);
//in full parallel position
back_emf_parallel = 600 - (avg_current * tot_res);
speed_parallel = 41.8;
speed_series = speed_parallel * back_emf_series/back_emf_parallel;
time2 = speed_series / 1.575;
time_parallel = time1 - time2;
disp("Total Energy Supplied during starting period is (in Wh)")
series = no_of_motors_parallel * line_voltage * avg_current * time2;
series = series / 3600;//converting to watt-hour
parallel = no_of_motor * line_voltage * avg_current * time_parallel;
parallel = parallel / 3600;//converting to watt-hour
disp(parallel+series);
disp("Energy lost in starting resistances(in Wh)");
series = no_of_motors_parallel * 0.5 * back_emf_series * avg_current * time_parallel;
series = series / 3600;//converting to watt-hour
parallel = no_of_motor * 0.5*300 * avg_current * time_parallel;
parallel = parallel / 3600;//converting to watt-hour
disp(parallel+series);
disp("Energy lost in motor resistance(in Wh)");
W = no_of_motor * avg_current^2 * tot_res * time1;
W = W / 3600;//converting to watt-hour
disp(W);
KE = 0.5 * (time1/3600)*(tot_tractive_effort * speed * 1000/3600);
disp(KE,"useful energy is (in Wh)");
//the result vary slightly hence values are rounded off in textbook

