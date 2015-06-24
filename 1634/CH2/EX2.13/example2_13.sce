

//exapple 2.13 
clc; funcprot(0);
// Initialization of Variable
l=20/100;//length of photograph
w=20/100;//breadth of photograph
Pl=0.6;//longitudinal lap
Pw=0.3;//side lap
s=100*20;
L=(1-Pl)*s;
W=(1-Pw)*s;
Ar=L*W/1000/1000;
N=100/Ar;
A=round(N);
if N-A<0 then
   disp(A,"no. of photographs to be taken");
else
    disp(A+1,"no. of photographs to be taken");
end

