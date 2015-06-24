// chapter 13
// example 13.1
// page 272

Rc=4 // kilo ohm
Vcc=10 // V
Ib_zero=10d-3 // mA
Ib_max=15d-3 // mA
Ib_min=5d-3 // mA
gain_beta=100

Ic_zero=Ib_zero*gain_beta
Ic_max=Ib_max*gain_beta
Ic_min=Ib_min*gain_beta

Vc_zero=Vcc-Ic_zero*Rc
Vc_max=Vcc-Ic_max*Rc
Vc_min=Vcc-Ic_min*Rc

printf("As collector current increases from %.3f mA to %.3f mA \noutput voltage decreases from %.3f V to %.3f V \n",Ic_zero,Ic_max,Vc_zero,Vc_max)
printf("As collector current decreases from %.3f mA to %.3f mA \noutput voltage increases from %.3f V to %.3f V \n",Ic_max,Ic_min,Vc_max,Vc_min)
printf("Thus output voltage is 180 degrees out of phase from input voltage \n")

printf("Note : \ni) input voltage and input current are in phase \nii) input voltage and output current are in phase \niii) output voltage is 180 degrees out of phase with input voltage\n")


// plotting base current and collector current and output voltage in same graph using following code instead of xcos
clf()
x=linspace(0,2*%pi,100)
ib=5*sin(x)+10
ic=0.5*sin(x)+1
vc=-4*sin(x)+6
plot2d(x,ib,style=1,rect=[0,0,20,20])
xtitle("base current(micro ampere) - Black                      collector current(mA) -  Blue                    output voltage(V) - Green                  ","t")
plot2d(x,ic,style=2,rect=[0,0,20,20])
plot2d(x,vc,style=3,rect=[0,0,20,20])
