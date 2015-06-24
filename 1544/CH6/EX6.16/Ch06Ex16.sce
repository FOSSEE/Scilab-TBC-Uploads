// Scilab code Ex6.16: Pg 228 (2008)
clc; clear;

tb1 = 0.1e-03;  // Timebase of channel 1, s/cm
tb2 = 10e-06;  // Timebase of channel 2, s/cm
Y_amp1 = 5; // Y-amp setting for channel 1, V/cm
Y_amp2 = 0.5; // Y-amp setting for channel 2, V/cm

// Channel 1
V_pp = 3*Y_amp1;    // Peak-to-peak value of waveform in channel 1, V
Vm = V_pp/2;    // Amplitude of waveform in channel 1, V
V = Vm/sqrt(2); // rms value of sine wave in channel 1, V
T = 4*tb1;  // Time period of sine wave, second
f = 1/(T*1000);    // Frequency of sine wave, kHz
printf("\nThe amplitude of sine waveform in channel 1 = %3.1f V", Vm);
printf("\nThe rms value of sine wave in channel 1 = %3.1f V", V);
printf("\nThe frequency of sine wave in channel 1 = %3.1f kHz", f);

// Channel 2
V_pp = 2*Y_amp2;    // Peak-to-peak value of waveform in channel 2, V
Vm = V_pp/2;    // Amplitude of waveform in channel 2, V
V = Vm; // rms value of square wave in channel 2, V
T = 2/3*tb2;  // Time period of square wave, second
f = 1/(T*1000);    // Frequency of square wave, kHz
printf("\nThe amplitude of square waveform in channel 2 = %3.1f V", Vm);
printf("\nThe rms value of square wave in channel 2 = %3.1f V", V);
printf("\nThe frequency of square wave in channel 2 = %3d kHz", f);


// Result
// The amplitude of sine waveform in channel 1 = 7.5 V
// The rms value of sine wave in channel 1 = 5.3 V
// The frequency of sine wave in channel 1 = 2.5 kHz
// The amplitude of square waveform in channel 2 = 0.5 V
// The rms value of square wave in channel 2 = 0.5 V
// The frequency of square wave in channel 2 = 150 kHz 
