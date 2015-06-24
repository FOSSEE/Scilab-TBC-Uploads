clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.57
// Page 314
printf("Example 5.57, Page 314 \n \n");

// solution

To = 273.15
T1 = 308.15
H1 = 124.8*(T1-To)  // kJ/kmol
H2 = 134.9*(T1-To)  // kJ/kmol
HE1 = .1*.9*[542.4+55.4*(.9-.1)-132.8*(.9-.1)^2-168.9*(.9-.1)^3]  // kJ/kmol of mix
Ha = HE1+H1*.1+H2*.9
HE2 = .2*.8*[542.4+55.4*(.8-.2)-132.8*(.8-.2)^2-168.9*(.8-.2)^3]  // kJ/kmol of mix
Hb = HE2+H1*.2+H2*.8
HE3 = .3*.7*[542.4+55.4*(.7-.3)-132.8*(.7-.3)^2-168.9*(.7-.3)^3]  // kJ/kmol of mix
Hc = HE3+H1*.3+H2*.7
HE4 = .4*.6*[542.4+55.4*(.6-.4)-132.8*(.6-.4)^2-168.9*(.6-.4)^3]  // kJ/kmol of mix
Hd = HE4+H1*.4+H2*.6
HE5 = .5*.5*[542.4+55.4*(.5-.5)-132.8*(.5-.5)^2-168.9*(.5-.5)^3]  // kJ/kmol of mix
He = HE5+H1*.5+H2*.5
HE6 = .6*.4*[542.4+55.4*(.4-.6)-132.8*(.4-.6)^2-168.9*(.4-.6)^3]  // kJ/kmol of mix
Hf = HE6+H1*.6+H2*.4
HE7 = .7*.3*[542.4+55.4*(.3-.7)-132.8*(.3-.7)^2-168.9*(.3-.7)^3]  // kJ/kmol of mix
Hg = HE7+H1*.7+H2*.3
HE8 = .8*.2*[542.4+55.4*(.2-.8)-132.8*(.2-.8)^2-168.9*(.2-.8)^3]  // kJ/kmol of mix
Hh = HE8+H1*.8+H2*.2
HE9 = .9*.1*[542.4+55.4*(.1-.9)-132.8*(.1-.9)^2-168.9*(.1-.9)^3]  // kJ/kmol of mix
Hi = HE9+H1*.9+H2*.1
HE10 = .0*1.*[542.4+55.4*(.0-1.)-132.8*(.0-1.)^2-168.9*(.0-1.)^3]  // kJ/kmol of mix
Hj = HE10+H1+H2*0
x = linspace(0,1,100)
y = linspace(4300,5000,100)
y = 4721.5-57.4*x+1137.7*x^2-3993.6*x^3+3909.2*x^4-1351.2*x^5
plot(x,y)
title("H vs x1")
xlabel("x1")
ylabel("H (kJ/kg sol.)")
printf("                         Enthalpy, kJ/kmol mix \n  x1           HE                 H \n  0            0                  "+string(H2)+" \n  0.1          "+string(HE1)+"          "+string(Ha)+" \n  0.2          "+string(HE2)+"          "+string(Hb)+" \n  0.3          "+string(HE3)+"           "+string(Hc)+" \n  0.4          "+string(HE4)+"          "+string(Hd)+" \n  0.5          "+string(HE5)+"              "+string(He)+" \n  0.6          "+string(HE6)+"          "+string(Hf)+" \n  0.7          "+string(HE7)+"          "+string(Hg)+" \n  0.8          "+string(HE8)+"          "+string(Hh)+" \n  0.9          "+string(HE9)+"          "+string(Hi)+" \n  1.0          "+string(HE10)+"                  "+string(Hj)+"")
