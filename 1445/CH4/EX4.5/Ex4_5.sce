//CHAPTER 4- MEASURING INSTRUMENTS
//Example 5

clc;
disp("CHAPTER 4");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
m_c=100;                  //meter constant in rev/kWh
I=20;                     //load current in Amperes
v=230;                    //supply voltage in Volts
pow_fact=0.8;
rev_act=360;              //actual number of revolutions

//SOLUTION
E=(v*I*pow_fact)/1000;    //'E' is energy consumed in one hour in kWh
rev=m_c*E;                //number of revolutions for true energy
disp(sprintf("The number of revolutions made by the meter is %f",rev));
err=(rev_act-rev)/rev;    //error
err=err*100;              //percentage error
disp(sprintf("The percentage error is %f %%",err));
if(err<0) then
disp("The negative sign indicates that the meter will run slow");
end

//END

