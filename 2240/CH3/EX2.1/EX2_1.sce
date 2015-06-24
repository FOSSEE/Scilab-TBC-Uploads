// Grob's Basic Electronics 11e
// Chapter No. 02
// Example No. 2_1
clc; clear;
// What is the resistance indicated by the five-band color code in Fig. 2–10? Also, what ohmic range is permissible for the specified tolerance?

disp ('The first stripe is orange for the number 3, the second stripe is blue for the number 6, and the third stripe is green for the number 5. Therefore, the first three digits of the resistance are 3, 6, and 5, respectively. The fourth stripe, which is the multiplier, is black, which means add no zeros. The fifth stripe, which indicates the resistor tolerance, is green for +-0.5%.')

disp ('Therefore R = 365 Ohms +-0.5%. The permissible ohmic range is calculated as 365*0.005 = +-1.825 Ohms, or 363.175 to 366.825 Ohms.')
