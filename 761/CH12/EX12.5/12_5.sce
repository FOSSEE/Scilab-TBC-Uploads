clc;
// page no 413
// prob no 12_5
no_of_phase_angles=16;
no_of_amplitudes=4;
no_of_states_per_symbol=no_of_phase_angles*no_of_amplitudes;
bit_per_symbol=log2(no_of_states_per_symbol);
disp(bit_per_symbol,'The no. of bits per symbol is');