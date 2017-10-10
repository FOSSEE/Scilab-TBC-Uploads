//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 46

clc;
disp("CHAPTER 1");
disp("EXAMPLE 46");

//VARIABLE INITIALIZATION
v=240;                          //in Volts

//SOLUTION
//case1: p=60W
p1=60;                          //in Watts 
r1=(v^2)/p1;
disp(sprintf("Resistance of the metal filament lamp is %d Ω",r1));

//case2: p=100W
p2=100;                         //in Watts
r2=(v^2)/p2;

if(r1>r2) then
disp(sprintf("Resistance of %d W lamp will be greater",p1));
else
disp(sprintf("Resistance of %d W lamp will be greater",p2));
end;

//END
