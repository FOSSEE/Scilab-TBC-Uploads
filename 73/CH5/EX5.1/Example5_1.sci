//Chapter 5_Monolithic Components
//Caption : Transit Time
//Example5.1: A lateral pnp device base width is 8 um and the diffusion cofficient for base region is 10 cm^2/sec. Calculate the base transit time and the unity gain frequency.
//Solution:
function T=transittime(W,D)//W:base width=8um; D:base diffusion cofficient=10 sq cm/sec.
    T= W^2/(2*D);// since f(transit frequency response )=2*D/(W^2)
    disp('base transit time is:')
    disp('ns',T*10^9)// in nanoseconds(ns)
    F=1/(2*%pi*T)// where F=unity gain frequency=1/(2*%pi*transit time)
    disp('unity gain frequency is:')
    disp('MHz',F/10^6)// in Mega Hertz
endfunction
//transittime((8*10^-6),10*10^-4);