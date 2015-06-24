
//Variable declaration:
x = 0.3                         //Length from the leading age of the plate (m)
L = 1.2                         //Length of plate (m)
TS = 58.0                       //Surface temperature of plate (°C)
Ta = 21.0                       //Temperature of flowing air (°C)

//Calculation:
hx = 25/x**0.4                  //Local heat transfer coefficient at 0.3m (W/m^2.K) (Part 1)
syms y                          //Length
hy = 25/y**0.4                  //hx at the end of the plate (W/m^2.K)
h = integrate(hy, y,0,L)/L    //Average heat transfer coefficient (W/m^2.K)
Q = hx*(TS-Ta)                  //Heat flux at 0.3m from leading edge of plate (W/m^2)
hL = 25/L**0.4                  //Local heat transfer coefficient at plate end (W/m^2.K) (Part 2) 
r = h/hL                        //Ratio h/hL at the end of the plate

//Result:
printf("1. The heat flux at 0.3 m from the leading edge of the plate is : %.0f  W/m^2.",Q)
printf("2. The local heat transfer coefficient at the end of the plate is : %.1f  W/m^2.K.",hL)
disp("3. The ratio h/hL at the end of plate is : ")
disp(r)
