// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-30

clear; clc; close; // Clear the work space and console.

// Given data
// subscripts a,b,c for the current, voltages indicates respective cases a ,b ,c.
// from fig.14-27a
V_pa = 1000 ; // Phase voltage in volt
I_1a = 1 ; // line current in primary in A
V_2a = 100 ; // voltage across secondary in V
Ic_a = 10 ; // current in lower half of auto-transformer in A

// from fig.14-26b
V_s = 100 ; // voltage in secondary wdg in V
I_2b = 10 ; // current in secondary in A
V_1b = 1000 ; // voltage across primary in V
Ic_b = 1 ; // current in lower half of auto-transformer in A

// Calculations
// case a
S_T1 = (V_pa*I_1a + V_2a*I_1a)/1000 ; // Total kVA transfer in step-down mode

// case b
S_T2 = (V_s*I_2b + V_1b*I_2b)/1000 ; // Total kVA transfer in step-up mode

// case c
S_x_former_c = V_pa*I_1a/1000 ; // kVA rating of th autotransformer  in Fig.14-27a

// case d
V_1 = V_pa ;
S_x_former_d = V_1*Ic_b/1000  ; // kVA rating of th autotransformer  in Fig.14-26b


// Display the results
disp("Example 14-30 Solution : ");

printf(" \n a: Total kVA transfer in step-down mode :\n    S_T = %.1f kVA transferred \n",S_T1);

printf(" \n b: Total kVA transfer in step-up mode :\n    S_T = %.1f kVA transferred \n",S_T2);

printf(" \n c: kVA rating of th autotransformer in Fig.14-27a:\n    S_x-former = %d kVA \n ",S_x_former_c);

printf(" \n d: kVA rating of th autotransformer in Fig.14-26b:\n    S_x-former = %d kVA \n ",S_x_former_d);

printf(" \n e: Both transformers have the same kVA rating of 1 kVA since the same ");
printf(" \n    autotransformer is used in both parts.Both transformers transform ");
printf(" \n    a total of 1 KVA. But the step-down transformer in part(a) conducts ");
printf(" \n    only 0.1 kVA while the step-up transformer in the part(b) conducts 10");
printf(" \n    kVA from the primary to the secondary.");
