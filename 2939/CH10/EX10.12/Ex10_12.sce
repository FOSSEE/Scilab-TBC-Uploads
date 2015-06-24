
// Ex10_12
clc;
// Given:
vi=2.5;//titrant volume
V1=10; // vol of KBr in ml
N2=0.01;//normality of AgNO3
M1=119;// mol wt of KBr
// Solution:
ai=((12500/5)-10);
af=((6000/6)-10);
// deerease in activity due to addition of titrant 2.5ml
d=ai-af;
// volume corresponding to ai for AgNO3
V2=ai*vi/d;
N1=(N2*V2)/V1;// Normality of KBr solution

m=N1*M1/100;// mass of KBr in 10 ml solution

printf("\n The mass of potassium bromide in the original solution is = %f g",m)
