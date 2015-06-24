

//Variable declaration
R=25.                //external resistance(ohms)
Vm=200.              //peak value of voltage(V) as vs=200 sinwt
Rf=50.               //forward resistance(ohms)

//Calculations
//Part a 
Id=Vm/(2*Rf+R)      //diode current(peak)

//Part b 
Idc=(2*Id)/%pi    //dc current(A)

//Part c
PIV=Vm/2               //peak value of voltage across D1
PIVac=100/%pi      //average value of voltage across D1

//Part d
Im=Id                  //peak value of current(A)
Irms=Im/(sqrt(2)) //rms value of current(A)

//Results
printf ("peak value of current is %.1f A",Id)
printf ("dc currect is %.2f A",Idc)
printf ("across D1 are peak voltage is %.1f V and average voltage is %.1f V",PIV,PIVac)
printf ("Irms is %.2f A",Irms)
