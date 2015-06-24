//CHAPTER 4- MEASURING INSTRUMENTS
//Example 9

disp("CHAPTER 4");
disp("EXAMPLE 9");

//VARIABLE INITIALIZATION
I=50;                     //in Amperes
v=230;                    //in Volts
rev=61;                   //revolutions
t=37/3600;                //from seconds to hours
m_c=500;                  //meter constant in rev/kwh
pow_fact=1;               //since load is purely resistive

//SOLUTION
E1=(v*I*t*pow_fact)/1000; //energy consumed in 37 seconds in kWh
E2=rev/m_c;               //energy consumption registered by meter
err=(E2-E1)/E1;
err=err*100;              //percentage error
disp(sprintf("The percentage error is %.2f %%",err));
if(err<0) then
disp("The negative sign indicates that the meter will run slow");
end

//END



