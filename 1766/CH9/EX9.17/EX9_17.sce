clc;funcprot(0);//Example 9.17
//Initilisation of Variables
N1=3;..//Number of shields in first scenario
N2=2;..//Number of shields in second scenario
//calculations
Q3byQ0=1/(N1+1)
Pr1=1-(Q3byQ0)
Q2byQ0=1/(N2+1)
Pr2=1-(Q2byQ0)
disp(Pr1*100,"Percentage reduction in heat transfer rate when Number of shields is 3")
disp(Pr2*100,"Percentage reduction in heat transfer rate when Number of shields is 2")
