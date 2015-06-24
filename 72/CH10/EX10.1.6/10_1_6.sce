//CAPTION: Frequency-Agile_Magnetron
//chapter_no.-10,  page_no.-467
//Example_no.10-1-6

clc;

//(a) Calculate_the_agile_excursion
t=.2*(10^-6);//pulse_duration
N=14;//pulse_rate_on_target
AC=N/t;//agile_Excursion
AC=AC/(10^6);//in MHz
disp(AC,'the_agile_excursion(in MHz)is =');



//(b) Calculate_the_pulse-to-pulse_frequency_separation


fp=1/t;
fp=fp/(10^6);//in MHz
disp(fp,'the_pulse-to-pulse_frequency_separation(in MHz)is =');



//(c) Calculate_the_signal_frequency

DC=.001//Duty_cycle
f=(DC/t);
f=f/(10^3);//in KHz
disp(f,'the_signal_frequency(in KHz)is =');



//(d) Calculate_the_time_for_N_pulses

Time=N/f;
disp(Time,'the_time_for_14_pulses_per_second_(in ms)is =');




//(e) Calculate_the_agile_rate

Agilerate=1/(2*Time*10^-3);

disp(Agilerate,'the_agile_rate(in Hz)is =');