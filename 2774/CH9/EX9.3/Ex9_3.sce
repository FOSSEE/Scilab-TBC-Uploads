clc
// initialization of variables

// THE REACTION IS
// aC4H10 + b(O2+3.76N2)----> CO2 + 1CO + 3.5H20 + 84.6N2 + cH2O
// a, b and c are calculated by atomic balance
// C: 4a=11+1
// H:10a=2c
// O:2b=22+1+7+c
// solving these equations using matrix
A=[4 0 0;10 0 -2;0 2 -1]
B=[12;0;30]
x=A\B
a=x(1)
b=x(2)
c=x(3)

// Now equation becomes
//C4H10 + 7.5(O2+3.76N2)----> 3.67CO2 + 0.33CO + 1.17H20 + 28.17N2 + 5H2O
//MOLES OF AIR in this equation is 7.5 moles
mairactual=7.5 // in moles
//MOLES OF AIR in standard equation of Ex.9 is 6.5
mairtheoritical=6.5
%theoriticalair=100*(mairactual/mairtheoritical) 
printf("The %% theoritical air is %0.1f %% ",%theoriticalair)
