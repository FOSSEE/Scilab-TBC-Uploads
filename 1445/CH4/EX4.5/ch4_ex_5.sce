//CHAPTER 4- MEASURING INSTRUMENTS
//Example 5

disp("CHAPTER 4");
disp("EXAMPLE 5");

//VARIABLE INITIALIZATION
m_c=100;                  //meter constant in rev/kWh
I=20;                     //in Amperes
v=230;                    //in Volts
pow_fact=0.8;
rev_act=360;              //actual revolution

//SOLUTION
E=(v*I*pow_fact)/1000;    //from Wh to kWh
rev=m_c*E;                //number of revolutions for true energy
disp(sprintf("The number of revolutions made by the meter is %f",rev));
err=(rev_act-rev)/rev;
err=err*100;              //percentage error
disp(sprintf("The percentage error is %f %%",err));
if(err<0) then
disp("The negative sign indicates that the meter will run slow");
end

//END

