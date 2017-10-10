//CHAPTER 4- MEASURING INSTRUMENTS
//Example 12

disp("CHAPTER 4");
disp("EXAMPLE 12");

//VARIABLE INITIALIZATION
I1=1;               //full scale current in 1st ammeter in mA
I2=10;              //full scale current in 2nd ammeter in mA
r1=100;             //internal resistance of 1st ammeter in Ohms
r2=25;              //internal resistance of 2nd ammeter in Ohms

//SOLUTION
R1=r2/(r1+r2);      //resistance for 1st ammeter 
R2=r1/(r1+r2);      //resistance for 2nd ammeter
I=I1/R1;            //by current divider law I1=(I*r2)/(r1+r2) =>I1=I*R1 =>I=I1/R1 
A2=I*R2;            //A2=reading of second ammeter
disp(sprintf("The total current that the two ammeters can carry is %d mA",I));

//END


