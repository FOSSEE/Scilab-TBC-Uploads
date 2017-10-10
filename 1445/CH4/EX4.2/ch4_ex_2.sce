//CHAPTER 4- MEASURING INSTRUMENTS
//Example 2

disp("CHAPTER 4");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
G=10;        //resistance in Ohms
S=1;         //shunt resistance in Ohms
r=12;        //total resistance in Ohms
emf=2;       //in Volts

//SOLUTION
I=emf/r;
I_g=(S*I)/(S+G);
disp(sprintf("The current through the galvanometer is %f A",I_g));

//END




