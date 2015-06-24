

//exapple 2.14 
clc; funcprot(0);
// Initialization of Variable
Pl=0.6;//longitudinal lap
Pw=0.3;//side lap
L1=10000;
s=100*20;
L2=L1;
N1=L1/((1-Pl)*s)+1;
A1=round(N1);
if N1-A1<0 then
   N1=A1
else
    N1=A1+1;
end
N2=L2/((1-Pw)*s)+1;
A2=round(N2);
if N2-A2<0 then
   N2=A2
else
    N2=A2+1;
end
N=N1*N2;
disp(N,"no. of photographs to be taken");
clear
