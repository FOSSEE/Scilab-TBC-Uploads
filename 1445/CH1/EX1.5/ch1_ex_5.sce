//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 5

disp("CHAPTER 1");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
r1=2;                         //in Ohms
r2=4;                         //in Ohms
r3=8;                         //in Ohms
r4=8;                         //in Ohms
r5=2;                         //middle resistance in Ohms

//SOLUTION

//To find resistance between a and c
req1=r1+r2; 
req2=r1+r4; 
req3=(req1*r1)/(req1+r1); 
req4=(req3*req2)/(req3+req2);
disp(sprintf("The eqiuvalent resistance between points a and c is %f Ω",req4));

//To find resistance between b and d
//converting delta abc into star 
//delta values
rab=r1;
rbc=r2;
rac=6;
//star values
r=rab+rbc+rac; 
ra=(rab*rbc)/r;
rb=(rab*rac)/r;
rc=(rbc*rac)/r;
req5=rb+rac; 
req6=rc+8;   
req7=ra+((req5*req6)/(req5+req6));
disp(sprintf("The eqiuvalent resistance between points b and d is %f Ω",req7));

//END
