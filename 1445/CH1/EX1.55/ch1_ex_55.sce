//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 55

disp("CHAPTER 1");
disp("EXAMPLE 55");

//VARIABLE INITIALIZATION
v1=50;                        //voltage source in Volts
v2=100;                       //voltage source in Volts
r1=40;                        //in Ohms
r2=50;                        //in Ohms
r3=20;                        //in Ohms
r4=10;                        //in Ohms

//SOLUTION
diff=(v1/r2)-(v2/r3);
vp=diff/((1/r2)+(1/r3)+(1/r4));
vba=vp+v2;
disp(sprintf("The voltage between A and B is %f V",vba));

//END

