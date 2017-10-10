//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 9

disp("CHAPTER 1");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION
r1=1;                           //in Ohms
r2=2;                           //in Ohms
r3=3;                           //in Ohms
r4=1;                           //in Ohms

//SOLUTION

//delta values
rab=r1;                         //between points a and b
rac=r2;                         //between points a and c
rbc=r3;                         //between points b and c
//coverting delta abc into star
//star values
r=rab+rbc+rac;
ra=(rab*rac)/r;
rb=(rab*rbc)/r;
rc=(rbc*rac)/r;

req1=r1+r4;
req2=rb+r2;
req3=(req1*req2)/(req1+req2);
req4=ra+req3;
disp(sprintf("The equivalent input resistance is %f Ω",req4));

//END

