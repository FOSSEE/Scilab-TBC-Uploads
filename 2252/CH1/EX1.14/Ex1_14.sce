
//inner delta DEF is transformed to equivalent star connection having resistances Ra, Rb, Rc
Ra=1.5*2.5/(1.5+2.5+1)
Rb=1.5*1/(1.5+2.5+1)
Rc=1*2.5/(1.5+2.5+1)
//inner portion of obtained star network ABC is converted into equivalent delta with resistances R1, R2, R3
R1=4+5.05+4*5.05/5
R2=4+5+4*5/5.05
R3=5+5.05+5*5.05/4
//now the network reduces to the form in which the resistances across a branch are in parallel 
//let equivalent resistances be Rac, Rbc and Rab
Rac=5*R1/(5+R1)
Rbc=5*R2/(5+R2)
Rab=5*R3/(5+R3)
R=(Rac+Rbc)*Rab/(Rac+Rbc+Rab)
mprintf("Equivalent resistance between A and B=%f ohm",R)
