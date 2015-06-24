//CHAPTER 4- MEASURING INSTRUMENTS
//Example 10

disp("CHAPTER 4");
disp("EXAMPLE 10");

//VARIABLE INITIALIZATION
r1=2;                 //in Ohms (r1=2 is an assumption)
r2=2;                 //in Ohms (since r1=r2)
v=100;                //in Volts

//SOLUTION
v1=(v*r1)/(r1+r2);    //voltage divider law
v2=(v*r2)/(r1+r2);    //voltage divider law
disp(sprintf("Reading of the 1st voltmeter is %d V",v1));
disp(sprintf("Reading of the 2nd voltmeter is %d V",v2));

//END

