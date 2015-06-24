//CHAPTER 4- MEASURING INSTRUMENTS
//Example 3

disp("CHAPTER 4");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
I=1;               //in Amperes (I=1 is an assumption) 
I_g=I/100;         //in Amperes 
G=2970;            //in Ohms
 
//SOLUTION
S=(G*I_g)/(I-I_g); //since I_g=(S*I)/(S+G);

disp(sprintf("The wire should have a resistance of %.0f Ω",S));

//END










