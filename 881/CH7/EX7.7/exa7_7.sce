clc;
//Example 7.7
//Page No 265

disp("Given: Conditions as per example 7-3 and assume a load resistance Rl=50");

//solution

Rl=50;
Vc=10;
vc=7.7;
V1= 4.4;
V2= 1.1;
V3= 0.2;

//(a)

disp("(a)Substituting into equation 7-36 yields, ");

Pc=(Vc^2)/(2*Rl);

disp('W',Pc,"Pc = ")

//(b)

disp("(b)Substituting into equation 7-41 yields, ");

Pt=((vc^2)/(2*Rl)+(V1^2)*2/(2*Rl)+(V2^2)*2/(2*Rl)+(V3^2)*2/(2*Rl));

disp('W',Pt,"Pt = ");
