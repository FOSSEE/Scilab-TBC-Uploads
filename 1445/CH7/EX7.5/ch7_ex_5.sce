//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 5

disp("CHAPTER 7");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
N1=350;                       //number of turns on primary side
N2=1050;                      //number of turns on secondary side
v1=400;                       //primary voltage in Volts
f=50;                         //in Hertz
ar=50/10000;                  //cross-sectional area in m^2

//SOLUTION

//solution (i)
B=v1/(4.44*ar*f*N1);
disp(sprintf("(i) The maximum flux density is %f Wb/m^2",B));

//solution (ii)
ratio=N2/N1;
v2=ratio*v1;
disp(sprintf("(ii) The induced emf in the secondary winding is %d V",v2));

//END 
