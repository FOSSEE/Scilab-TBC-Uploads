clc
clear

//INPUT
p=76*13.6*981;//pressure of air in dynes/sq.cm
v=11100;//volume expanded in ml
t1=273;//inital temperature in K
t2=274;//final temperature in K
cv=2.411;//specific heat at constant volume in cal/K
j=4.2*10^7;//joules constant in ergs/cal
//CALCULATIONS
w=p*v*log(t2/t1);//work done in ergs
h=cv*(t2-t1)+w/j;//heat supplied in cal

//OUTPUT
mprintf('the work done is %3.2f erg \n the heat supplied is %3.3f cal',w,h)
