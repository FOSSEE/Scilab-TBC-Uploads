// (4.2)    Water flows into the top of an open barrel at a constant mass flow rate of 7 kg/s. Water exits through a pipe near the base with a mass flow rate proportional to the height of liquid inside:medot = 1.4L, where L is the instantaneous liquid height, in m. The area of the base is 0.2 m2, and the density of water is 1000 kg/m3. If the barrel is initially empty, plot the variation of liquid height with time and comment on the result.

//solution

//variable initialization
midot = 7                                  //inlet mass flow rate in kg/s
A = .2                                     //area of base in m^2
d = 1000                                   //density of water in kg/m^3

function Ldot = f(t,L)
    Ldot = (midot/(d*A))-((1.4*L)/(d*A))  
endfunction

t=0:.01:1000
L = ode(0,0,t,f)
plot2d(t,L)
xtitle("","time","height")