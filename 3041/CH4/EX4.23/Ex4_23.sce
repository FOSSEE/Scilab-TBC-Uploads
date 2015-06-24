

//Variable declaration
gm = 1                    //transconductance
rd = 40                   //dynamic drain resistance(k ohms) 
Cgs = 5                   //gate to source capacitance(pF)
Cgd = 1                   //gate to drain capacitance(pF)
Cds = 1                   //drain to source capacitance(pF)
Avo1 = 20.                //voltage gain of JFET 1
Avo2 = 8.                 //voltage gain of JFET 2 
R1 = 5                    //resistance(k ohms)
R2 = 20                   //resistance(k ohms)
R3 = 8                    //resistance(k ohms)

//Calculations
//Part a
Avo = Avo1*Avo2               //voltage gain
Ceq1 = Cgs+Cgd*(1+Avo1)       //input crcuit for first JFET
Co1 = Cds+(Cgd*(1+(1/Avo1)))  //output crcuit for first JFET
Ceq2 = Cgs+Cgd*(1+Avo2)       //input crcuit for second JFET
Co2 = Cds+(Cgd*(1+(1/Avo2)))  //output crcuit for second JFET

//Part b
w21 = 1/(R1*Ceq1)             //input circuit frequency
w2 = 10^12/(R2*10^3*(Co1+Ceq2))        //common circuit frequency
w22 = 1/(R3*Co2)              //output circuit frequency


//Results
printf ("a)Avo is %.1f",Avo)
printf ("b)w21,w2,w22 are %.2f Mrad/sec, %.2f Mrad/sec and %.2f Mrad/sec",w21/1E-3,w2/1E+6,w22/1E-3)
printf ("nondominant corner freq is %.2f Mrad/sec",w2/1E+6)
