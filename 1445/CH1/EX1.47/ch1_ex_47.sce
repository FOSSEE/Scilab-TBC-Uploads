//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 47

disp("CHAPTER 1");
disp("EXAMPLE 47");

//VARIABLE INITIALIZATION
lc=20;                         //length of copper wire in m
dc=0.015/100;                  //diameter of copper wire in m
rhoc=1.7;                      //specific resistance for copper
lp=15;                         //length of platinum silver wire in m
dp=0.015/100;                  //diameter of platinum silver wire in m
rhop=2.43;                     //specific resistance for platinum silver

//SOLUTION

//for copper wire
sc=(%pi/4)*(dc^2);             //area
rc=rhoc*(lc/sc);

//for platinum silver
sp=(%pi/4)*(dp^2);             //area
rp=rhop*(lp/sp);


if(rc>rp) then
disp("Copper wire has greater resistance");
else
disp("Platinum silver wire has greater resistance");
end;

//END
