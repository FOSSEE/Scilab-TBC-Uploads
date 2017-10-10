//CHAPTER 4- MEASURING INSTRUMENTS
//Example 11

disp("CHAPTER 4");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
r1=30000;              //in Ohms
r2=20000;              //in Ohms
v=600;                 //in Volts

//SOLUTION
v1=(r1*v)/(r1+r2);     //voltage divider law
v2=(r2*v)/(r1+r2);     //voltage divider law
disp(sprintf("Reading of the 1st voltmeter is %d V",v1)); 
disp(sprintf("Reading of the 2nd voltmeter is %d V",v2));

//END



