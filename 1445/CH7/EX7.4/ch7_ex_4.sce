//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 4

disp("CHAPTER 7");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
va=10*1000;                   //apparent power
N1=50;                        //number of turns on primary side
N2=10;                        //number of turns on secondary side
v1=440;                       //primary voltage in Volts
f=50;                         //in Hertz

//SOLUTION 

//solution (a)
v2=v1*(N2/N1);
disp(sprintf("(a) The secondary voltage on no load is %d V",v2));

//solution (b)
I1=va/v1;
disp(sprintf("(b) The full load primary current is %f A",I1));
I2=va/v2;
disp(sprintf("The full load secondary current is %f A",I2));

//solution (c)
phi_m=v2/(4.44*N1*N2);
disp(sprintf("(c) The maximum value of the flux is %f mWb",phi_m*1000));

//END 
