//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.13(PAGENO 495)");
//given
t_dot = .2//duration of dot symbol
t_dash = .6//duration of dash symbol
t_space = .2//time between the symbols
//wkt sum of the probability is 1 i.e P_dot + P_dash = 1 hence
//P_dot = 2*P_dash weget 
P_dot = 2/3//probality of dot symbol
P_dash = 1/3//probality of dash symbol

//calculations 
H_X = -P_dot*log2(P_dot)-P_dash*log2(P_dash);//entropy
T_s = P_dot*t_dot + P_dash*t_dash +t_space;//average time per symbol
r = 1/T_s;//average symbol rate 
R = r*H_X;//average information rate of the telegraph sourece

//result
printf("\n\ni.The average information rate of the telegraph source = %.4f bits/seconds",R);
