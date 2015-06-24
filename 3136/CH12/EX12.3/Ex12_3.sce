clear all; clc;

disp("From the stam Mollier diagram,we have h1=1528 Btu/lbm,s1=1.82 Btu/(lbm_R at 250 psia and 1000 degrees Farenheit)")
disp("Hence at p2=10 psia,we have hs2=1165 btu/lbm, where ss2=s1")
disp("From Eta_t=(h1-h2)/(h1-hs2) we have")

h2=1528-0.85*(1528-1165)
printf("\n h2= %0.2f Btu/lbm",h2)

m=1.2
h1=1528
h2=1219.5
w_t=m*(h1-h2)
printf("\n wt= %0.2f Btu/s",w_t)//Wrongly rounded off in the book. A more accurate answer is 370.2.

w_t=370.3*778/550//converting units
printf("\n On converting units, we have wt= %0.1f hp",w_t)//Since the basic value of w_t differs from that given in the book,so does the converted value.









