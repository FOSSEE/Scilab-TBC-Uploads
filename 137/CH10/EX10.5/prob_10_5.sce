// page no 440
//problem no 10.5
clc;
a=52; // total no of cards in a deck
b=input ("enter the no of cards to be drawn = ");
pA1= b/a;// probability of getting first red ace =pA1
//the cards are drawn in succession without replacement, therefore the probability that the 2nd card will be the red ace = pA2
pA2=1/(a-1);
disp(p= pA1*pA2,"total probability = ");