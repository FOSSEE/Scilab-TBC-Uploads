//Chapter 13 example 5
//------------------------------------------------------------------------------
clc;
clear;
// Given data
PL      = 50;       // path length in miles from fig
FM      = 40;       // fade margin in dB
P_fm_ex = 7*10^-5;  // prob. of fade margin getting exceeding
P_fm_ex_50db    = 6*10^-6;  // prob. of fade margin getting exceeding for fade margin 50dB
p_fig_30m_40db  = 2*10^-5;  // prob fig for patl length of 30miles and fade margin 40dB 

// Calculations
impr_prob_a = P_fm_ex/P_fm_ex_50db;    // improvement in prob. of fade margin for a
impr_prob_b = P_fm_ex/p_fig_30m_40db   // improvement in prob. of fade margin for b

// Output
mprintf('(a):\n Improvement in probability of fade margin = %3.1f\n (b):\n Improvement in probability of fade margin = %3.1f\n',impr_prob_a,impr_prob_b);
//------------------------------------------------------------------------------
