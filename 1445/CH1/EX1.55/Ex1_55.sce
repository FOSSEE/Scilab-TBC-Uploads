//CHAPTER 1- D.C. CIRCUIT ANALYSIS AND NETWORK THEOREMS 
//Example 55

disp("CHAPTER 1");
disp("EXAMPLE 55");

//VARIABLE INITIALIZATION
vcd=50;                       //voltage source in Volts
v=100;                        //voltage source in Volts
r1=40;                        //in Ohms
r2=50;                        //in Ohms
r3=20;                        //in Ohms
r4=10;                        //in Ohms

//SOLUTION
res=(vcd/r2)-(v/r3);          //'res' (short for result) is used to make calculations easy
vp=res/((1/r2)+(1/r3)+(1/r4));
vba=vp+v;
disp(sprintf("The voltage between A and B is %.2f V",vba));

//END

