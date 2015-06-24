
//points A,E,F,G are at the same potential
Rab=20
Reb=50
R1=Rab*Reb/(Rab+Reb)  //equivalent resistance of Rab and Reb
Rbc=25
R2=R1+Rbc  //equivalent resistance of R1 and Rbc
Rfc=50
R3=Rfc*R2/(Rfc+R2)  //equivalent resistance of R2 and Rfc
Rcd=30
R4=R3+Rcd  //equivalent resistance of R3 and Rcd
R=R4*50/(50+R4)  //equivalent resistance between A and D
i=200/R   //Ohm's Law
mprintf("Current drawn by circuit=%f A", i)
