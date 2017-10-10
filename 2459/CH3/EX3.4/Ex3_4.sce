//chapter3
//example3.4
//page50

Eb=250 // V
Ec=-3 // V

// given that Ib=0.003*(Eb+30*Ec)^1.5 mA
// differentiating w.r.t Ec with Eb=constant, we get
gm=0.003*1.5*(Eb+30*Ec)^0.5*30*10^-3
mutual_inductance_micro=gm*10^6

printf("mutual conductance = %f mho or %.3f micro mho \n",gm,mutual_inductance_micro)

// differentiating given equation w.r.t Ec with Ib=constant, we get
// 0=0.003*10^-3*1.5*(Eb+Ec)^1.5*(mu+30) where mu is equal to ratio of changes in Eb and Ec i.e. amplification factor
// thus mu+30=0 hence we get
mu=-30
    printf("here negative sign of amplification factor indicates that Eb and Ec are in opposite direction. \n \n")
// here we need not worry as to if mu may be positive because the equation given in problem statement will always give mu+30=0 i.e. mu=-30

printf("amplification factor = %.3f \n",mu)  
  
rp=mu/gm
if rp<0    // rp can not be negative
    rp=-rp
end

printf("plate resistance = %.3f ohm \n",rp)

//in book, the answers are less accurate. The accurate answers are
// gm=1707.630 micro mho
// plate resistance=17568.209 ohm
