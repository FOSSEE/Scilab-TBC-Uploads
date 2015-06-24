//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 4

disp("CHAPTER 7");
disp("EXAMPLE 4");

//10kVA Transformer with 50 turns on primary and 10 turns on secondary
//connected to 440 V 50Haz supply
//VARIABLE INITIALIZATION
va=10*1000;                   //apparent power, converting kVA to VA
N1=50;                        //number of turns on primary side
N2=10;                        //number of turns on secondary side
v1=440;                       //primary voltage in Volts
f=50;                         //in Hertz

//SOLUTION 

//solution (a)
//K=N2/N1=V2/V1
v2=v1*(N2/N1);
disp(sprintf("(a) The secondary voltage on no load is %d V",v2));

//solution (b)
//Current on Full load
//primary side I1=VA/V1
//secondary side I2=VA/V2
I1=va/v1;
disp(sprintf("(b) The full load primary current is %.4f A",I1));
I2=va/v2;
disp(sprintf("The full load secondary current is %.4f A",I2));

//solution (c)
//As per EMF equation
//E2=sqrt(2).pi.f.phimax.N2
phi_m=v2/(sqrt(2)*%pi*f*N2);
disp(sprintf("(c) The maximum value of the flux is %.3f mWb",phi_m*1000));

//END 
