clc;
//Example 20.7
//page no 276
printf("\n Example 20.7 page no 276\n\n");
//refer to illustrative Example 20.5
//(1)
//we have to calculate minimum air ventilation flow rate into the room containing 10 ng/m^3 of a toxic chemical
//ng means nanograms
rV=250//chemical generated in the laboratory,ng/min
c_o=10//room containg toxic chemical of 10ng/m^3 
c=35//limit of chemical concentration,ng/m^3
//applicable modal in this case
//q_o(c_o-c) + rV  =V*dc/dt
//substituting gives
q_o=(-rV)/(c_o-c)//minimum air ventilation flow rate
printf("\n q_o min. air ventilation flow rate=%f m^3/min",q_o);


