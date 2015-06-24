// Example 1.40 A card is drawn from each of two well shuffled cards
clc;
clear;
A=1/13;
B=1/13;
AB=A*B;
disp(A+B-AB,"Probab. that at least one of them is ace=",AB,"Events A and B are independent so P(AB)=",B,"Probab. that the card from Pack II is an ace",A,"Probab. that card from Pack I is an ace");
