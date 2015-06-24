
// Variable Declaration
G = 50.0            //Rating of machine(MVA)
f = 50.0            //Frequency of turbo generator(Hz)
V = 11.0            //Voltage rating of machine(kV)
H = 9.0             //Cycle corresponding to 180 ms
P_0 = 40.0          //Pre-fault output power(MW)
delta_0 = 20.0      //Rotor angle at instant of fault(degree)

funcprot(0)
// Calculation Section
P_0_close = 0                              //Output power at instant of reclosing(MW)
P_a = P_0 - P_0_close                      //Net accelerating power(MW)
delta_sqr = P_a*180*f/(G*H)                //double derivative(elect.degrees/sec^2)


function ans =  integrand1(t)                         //intgs the double derivative to 800*t
    ans = delta_sqr
endfunction    
a = intg(0, 180*10**-3,integrand1)   //Rotor velocity(electrical degrees/sec)

function ans = integrand2(t)                         //intgs the double derivative to 400*t^2
    ans = delta_sqr*t
endfunction    
b = intg(0, 180*10**-3,integrand2)
delta = delta_0 + b                        //Rotor angle(electrical degrees)

// Result Section
printf('Rotor angle at the instant of reclosure = %.2f electrical degrees' ,delta)
printf('Rotor velocity at the instant of reclosure = %.1f electrical degrees/sec' ,a)
