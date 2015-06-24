clc
// initialization of variables

%air=0.9 // 90% air is used for combustion

// THE REACTION IS
// C4H10 + 0.9*6.5*(O2+3.76N2)----> aCO2 + 5H20 + bCO
// a and b are calculated by atomic balance
a=2.7
b=1.3
%CO=b*100/31 // volume % of CO

printf("The volume %% of CO is %0.2f %% \n",%CO)

mair=6.5*%air*4.76*29 // mass of air in kg
mfuel=1*58 // mass of fuel butane in kg
AF=mair/mfuel // air-fuel ratio

printf("The air to fuel ratio is %0.2f kg air/ kg fuel ",AF)
// THE SOLUTION IS CORRECT BUT  THERE ARE SOME PRINTING MISTAKES IN TEXTBOOK
