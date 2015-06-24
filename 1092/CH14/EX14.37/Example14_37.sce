// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-37

clear; clc; close; // Clear the work space and console.

// Given data
// Δ-Δ transformers in Ex.35
kVA_1 = 20 ; // kVA rating of transformer 1
kVA_2 = 20 ; // kVA rating of transformer 2
kVA_3 = 20 ; // kVA rating of transformer 3

V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt

kVA = 40 ; // kVA supplied by the bank
PF = 0.7 ; // lagging power factor at which bank supplies kVA

// one defective transformer is removed

// Calculations
// case a
kVA_transformer = kVA / sqrt(3); // kVA load carried by each transformer

// case b
percent_ratedload_Tr = kVA_transformer / kVA_1 * 100 ; // percent load carried by each transformer

// case c
kVA_V_V = sqrt(3)*kVA_1 ; // Total kVA rating of the transformer bank in V-V

// case d
ratio_banks = kVA_V_V / (kVA_1 + kVA_2 + kVA_3) * 100; // ratio of V-V bank to Δ-Δ bank Tr ratings

// case e
kVA_Tr = kVA / 3 ;
percent_increase_load = kVA_transformer / kVA_Tr * 100 ; // percent increase in load on each transformer when one Tr is removed


// Display the results
disp("Example 14-37 Solution : ");

printf(" \n a: kVA load carried by each transformer = %.1f kVA/transformer\n",kVA_transformer);

printf(" \n b: percent rated load carried by each transformer = %.1f percent \n",percent_ratedload_Tr);

printf(" \n c: Total kVA rating of the transformer bank in V-V = %.2f kVA \n",kVA_V_V);

printf(" \n d: ratio of V-V bank to Δ-Δ bank Tr ratings = %.1f percent \n",ratio_banks);

printf(" \n e: kVA load carried by each transformer(V-V) = %.2f kVA/transformer\n",kVA_Tr);
printf(" \n    percent increase in load on each transformer when one Tr is removed :");
printf(" \n     = %.1f percent",percent_increase_load);
