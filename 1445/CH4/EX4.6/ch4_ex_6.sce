//CHAPTER 4- MEASURING INSTRUMENTS
//Example 6

disp("CHAPTER 4");
disp("EXAMPLE 6");

//VARIABLE INITIALIZATION
I_m=20/1000;        //from mA to A
v_m=50/1000;        //from mV to V
v=500;              //in Volts

//SOLUTION
r_m=v_m/I_m;
r_s=(v/I_m)-r_m;
disp(sprintf("The series resistance to measure 500 V on full scale is %f Ω",r_s));

//END
