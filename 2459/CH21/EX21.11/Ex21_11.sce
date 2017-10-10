// chapter 21
// example 21.11
// page 479

V=-2 // V
Vin=5 // V

// during positive half cycle
Vc_p=Vin-V // since Vin-Vc-V=0
// thus capacitor charges to Vc_p

// during negative half cycle
Vout=-Vin-Vc_p // since Vin-Vc_p-Vout=0

// we plot input and output waveforms using the following code instead of using xcos

clf()
t=0:0.1:5*%pi
plot(t,5*squarewave(t,50))
plot2d(t,-Vc_p+(-Vout+V)*squarewave(t,50)/2,style=3)
xtitle("input - blue                      output - green","t","volts")
