//chapter21
//example21.8
//page473

Rl=1d3 // ohm
R=200 // ohm

// for positive half cycle, diode is forward biased and since load is in parallel with diode we get
V_out_p=0.7 // V

// for negative half cycle, diode is reverse biased so it is open. Hence
V_in=-10 // V
V_out_n=V_in*Rl/(Rl+R)

printf("output voltage for positive cycle = %.3f V \nand for negative cycle = %.3f V",V_out_p,V_out_n)

// plotting input and output waveforms in same graph using following code instead of using xcos
clf()
t=linspace(0,%pi,100)
Vin=V_in*sin(t)
Vout=-V_out_n*sin(t)
subplot(2,2,1)
plot2d(t,-Vin,style=3,rect=[0,0,10,11])
xtitle("Vin +ve","t","volts")
subplot(2,2,2)
plot2d(t,Vout,style=2,rect=[0,-5,10,0.7])
xtitle("Vout","t","volts")
t=linspace(%pi,2*%pi,100)
Vin=V_in*sin(t)
subplot(2,2,3)
plot2d(t,-Vin,style=3,rect=[0,-11,10,0])
xtitle("Vin -ve","t","volts")
subplot(2,2,4)
plot2d(t,-Vout,style=2,rect=[0,-11,10,0])
xtitle("Vout","t","volts")
