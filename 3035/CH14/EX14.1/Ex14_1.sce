
// Variable Declaration
TMS = 0.5       //Time multiplier setting
I_f = 5000.0    //Fault current(A)
CT = 500.0/5    //CT ratio
set_plug = 1.0  //Relay plug set
I_relay = 5.0   //Rated relay current(A)

// Calculation Section
PSM = I_f/(CT*set_plug*I_relay)     //Plug setting multiplier
T1 = 1.0                            //Time of operation for obtained PSM & TMS of 1 from graph.Refer Fig 14.22
T2 = TMS*3/T1                       //Time of operation(sec)


// Result Section
printf('Operating time of the relay = %.1f sec' ,T2)
