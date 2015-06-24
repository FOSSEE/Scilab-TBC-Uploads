//Chapter-4, Example 4.18, Page 146
//=============================================================================
clc
clear
//CALCULATIONS
L=0.01;//inductance in henry
//equation of current is 10*cos(1500*t)
w=1500;//angular freq in rad/sec
Xl=(w*L);//inductive reactance in ohms
mprintf("inductive reactance is  %1.1f ohms\n",Xl);
function f=myfun(t)
  f=10*cos(w*t);
q=derivative(f);
endfunction//derivation yields e=-150*sin(1500*t)
mprintf("equation for voltage across is e=-150*sin(1500*t)")
X2=40;//given new inductance in ohms
f2=X2/(2*%pi*L);//freq in hz
mprintf("thus at freq %d hz inductance will be 40 ohms",f2)
//note:answer given for inductive reactance is wrong.Please check the calculations
//=================================END OF PROGRAM==============================
