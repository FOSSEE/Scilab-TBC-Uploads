// Exa 7.1

clc;
clear all;

// Given data
// Referring to waveform shown in fig 7.50 on page 211

V_attn= 0.5; // Vertical attenuator(V/div)
div=3; // No of vertical divisions

// Solution

// Using equation : Vp-p=(volts/div) * (no. Of div/1);

Vp_p=V_attn * div/1 ;

printf(' The peak to peak amplitude of the signal = %.1f Volts \n',Vp_p);

