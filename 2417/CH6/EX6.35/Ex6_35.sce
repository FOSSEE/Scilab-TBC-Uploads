clear;
clc;
printf("\t\t\tProblem Number 6.35\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.35 (page no. 285) 
// Solution

//In this problem,the air expands from 5 atm absolute to 1 atm absolute from an initial temperature of 1000R,
pr=12.298; //relative pressure //unit:atm 
h=240.98; //Btu/lbm //enthalpy 
pr=12.298/5; //The value of the final relative pressure //unit:atm
//Interpolation in the air table yields the following:
//   T     pr
//  620   2.249
//        2.4596
//  640   2.514
T=620+(((2.4596-2.249)/(2.514-2.249))*20); //the final temperature //unit:R
printf("The absolute final temperature is %f R\n",T);
u1=172.43; //initial internal energy //Btu/lbm
u2=108.51; //final internal energy //Btu/lbm
work=u1-u2; //Btu/lbm The work done by air in an isentropic nonflow expansion //where the value of u2 is obtained by interpolation at T  temperature and the value of u1 is read from the air table at 1000 R. 
printf("The work done by air in an isentropic nonflow expansion is %f Btu/lbm(out)\n",work)
