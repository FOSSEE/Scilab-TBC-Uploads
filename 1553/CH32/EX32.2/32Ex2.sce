//Chapter 32 Ex 2

clc;
close;
clear;
TD=540; t=9/12; r=12;
amt=(TD*(100+(r*t)))/(r*t);    //derived from formula true discount
PW=amt-TD;
mprintf("The amount of the bill and its present worth are Rs.%d and Rs.%d",amt,PW);
