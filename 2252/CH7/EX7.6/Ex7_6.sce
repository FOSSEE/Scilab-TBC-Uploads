
//calculating parameters of each coil
I=3//current through the circuit
//for coil A
Ra=12/3//resistance
Va=15//voltage drop
Za=Va/I
Xa=sqrt(Za^2-Ra^2)
//for coil B
Rb=6/3//resistance
Vb=9//voltage drop
Zb=Vb/I
Xb=sqrt(Zb^2-Rb^2)
//for coil C
Rc=9/3//resistance
Vc=12//voltage drop
Zc=Vc/I
Xc=sqrt(Zc^2-Rc^2)
mprintf("Parameters of\nCoilA: Ra=%f ohm, Xa=%f ohm\nCoil B: Rb=%f ohm, Xb=%f ohm\nCoil C: Rc=%f ohm, Xc=%f ohm\n",Ra,Xa,Rb,Xb,Rc,Xc)
//calculating power factor of each coil
pf_a=Ra/Za
pf_b=Rb/Zb
pf_c=Rc/Zc
mprintf("power factor of the coils are\npf_a=%f(lagging)\npf_b=%f(lagging)\npf_c=%f(lagging)\n",pf_a,pf_b,pf_c)
//calculating power dissipated for each coil
Pa=I^2*Ra
Pb=I^2*Rb
Pc=I^2*Rc
mprintf("Power dissipated in these coils:\nPa=%f W\nPb=%f W\nPc=%f W\n",Pa,Pb,Pc)
//calculating power factor of whole circuit
Rt=Ra+Rb+Rc
Xt=Xa+Xb+Xc
Zt=sqrt(Rt^2+Xt^2)
pf=Rt/Zt
mprintf("Power factor of the whole circuit=%f lagging\n",pf)
//calculating voltage applied across the whole circuit
V=I*Zt
mprintf("Voltage applied across the whole circuit=%f V",V)
