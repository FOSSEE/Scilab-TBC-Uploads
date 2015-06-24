//CHAPTER 4- MEASURING INSTRUMENTS
//Example 7

disp("CHAPTER 4");
disp("EXAMPLE 7");

//VARIABLE INITIALIZATION
m_c=100;                //meter constant in rev/kwh               
I=20;                   //in Amperes
v=210;                  //in Volts
pow_fact=0.8;           //leading
rev_act=350;            //actual revolution

//SOLUTION
E=(v*I*pow_fact)/1000;  //from Wh to kWh
rev_true=m_c*E;
disp(sprintf("The number of revolutions made by the meter is %.0f",rev_true));
err=(rev_act-rev_true)/rev_true;
err=err*100;             //percentage error
disp(sprintf("The percentage error is %.2f %%",err));
if(err<0) then
disp("The negative sign indicates that the meter will run slow");
end

//END


