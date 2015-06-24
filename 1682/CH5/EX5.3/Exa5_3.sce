//Exa 5.3
clc;
clear;
close;
//Evaluation at i=8%
disp("Evaluation at i=8%");
//Alternative 1 :
disp("Alternative 1 : ");
P=500000;//in Rs
A1=50000;//in Rs
G=50000;//in Rs
i=8;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_1=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_1,"The future worth amount of alternative 1 in RS. : ");

//Alternative 2 :
disp("Alternative 2 : ");
P=700000;//in Rs
A1=70000;//in Rs
G=70000;//in Rs
i=8;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_2=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_2,"The future worth amount of alternative 2 in RS. : ");
disp("The future worth of alternative 2 is greater than that of alternative 1. Thus, alternative 2 must be selected.");

//Evaluation at i=9%
disp("Evaluation at i=9%");
//Alternative 1 :
disp("Alternative 1 : ");
P=500000;//in Rs
A1=50000;//in Rs
G=50000;//in Rs
i=9;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_1=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_1,"The future worth amount of alternative 1 in RS. : ");

//Alternative 2 :
disp("Alternative 2 : ");
P=700000;//in Rs
A1=70000;//in Rs
G=70000;//in Rs
i=9;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_2=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_2,"The future worth amount of alternative 2 in RS. : ");
disp("The future worth of alternative 2 is greater than that of alternative 1. Thus, alternative 2 must be selected.");

//Evaluation at i=20%
disp("Evaluation at i=20%");
//Alternative 1 :
disp("Alternative 1 : ");
P=500000;//in Rs
A1=50000;//in Rs
G=50000;//in Rs
i=20;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_1=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_1,"The future worth amount of alternative 1 in RS. : ");

//Alternative 2 :
disp("Alternative 2 : ");
P=700000;//in Rs
A1=70000;//in Rs
G=70000;//in Rs
i=20;//in % per annum
n=6;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
//Formula : (A/G,i,n) :(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100) 
FW_2=(-P*(1+i/100)^n)+(A1+G*(((1+i/100)^n)-i*n/100-1)/(((i/100)*(1+i/100)^n)-i/100))*(((1+i/100)^n)-1)/(i/100);//in RS
disp(FW_2,"The future worth amount of alternative 2 in RS. : ");
disp("The negative sign of alternatives future worth indicates that alternative 2 incurs loss. Thus, none of the two alternatives should be selected. ");
//Note : Calculation in the book is not accurate.