clc;clear;
//Example 7.5

//given data
P1=5;
T1=450;
P2=1.4;

//calculations
//Ein - Eout = dEsystem/dt
//Ein = Eout
//Wout = m*(h1-h2)
//At P1 and T1
h1=3317.2;
s1=6.8210;
s2=s1;
//At P2 and s2
h2=2967.4;
Wout=h1-h2;
disp(Wout,'work output per unit mass in kJ/kg')
