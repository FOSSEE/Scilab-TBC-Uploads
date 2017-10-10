// Example 1.2
// Capacity of a Battery
p=12*4; // Instantaneous power consumed by the headlight (in Watt)
w_T=48*60; // Energy supplied in one minute (in joule)
q_T=w_T/12; // Total charge passing through the headlight in one minute(in coulombs)
w_stored= 5*10^6;// Energy stored in battery(in Joules)
q_stored=w_stored/12; 
Capacity=q_stored/3600;
disp(w_T,"Energy supplied in one minute(in Joule)=")
disp(q_T,"Charge transfer in one minute(in Coulumbs)=")
disp(q_stored,"Total charge stored in Battery(in Coulumbs)=")
disp(Capacity,"Capacity of Battery (in Ah)=")
