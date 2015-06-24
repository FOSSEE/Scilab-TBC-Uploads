clear;
clc;
disp("for 8-KHz sampling,the frequencies present are...(in KHz)");

Fs=8; //sampling frequency
Fst=3.5 //single tone frequency

disp(Fst);
disp(-Fst);
disp(Fs-Fst);
disp(-(2*Fs+Fst),(2*Fs+Fst),-(Fs+Fst),(Fs+Fst),(Fs-Fst));
disp("...etc...");

disp("in this case, if the LPF is designed with cut-off frequency(8/2= 4-KHz)");
disp("then the maximum passable frequency is 3.5-KHz");
disp("for 5-KHz sampling,the frequencies present are...(in KHz)");

Fs=5;//new sampling frequency
disp(Fst);
disp(-Fst);
disp(Fs-Fst);
disp(-(2*Fs+Fst),(2*Fs+Fst),-(Fs+Fst),(Fs+Fst),(Fs-Fst));
disp("...etc...");

disp("in this case, if the LPF is designed with cut-off frequency(5/2=2.5-KHz)");
disp("then the original signal cant be passed");
disp("therefore, the signal cant be reconstructed");

