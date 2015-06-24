//Variable declaration
Vbb=5               //base voltage of bipolar transistor(V)
Vbe=0.7             //base emitter voltage drop(V) in active region  
Rb=150              //base resistance(ohm)
beeta=125           //curret gain     
Rc=3                //collector resistance(k ohms)  
Vcc=10              //supply voltage(V)
Vce=0.2             //collector to emitter voltage(V)

//Calculations
//Part a
Ib=(Vbb-Vbe)/Rb       //base current(mA)
Ic=beeta*Ib           //collector current(mA)
Vcb=-Vbe-(Rc*Ic)+Vcc  //collector base voltage drop(V)

//Part b -for npn transistor
Vbe=0.8             //base emitter voltage drop(V) in saturation
Ic=(Vcc-Vce)/Rc     //collector current(mA)
Ib=(Vbb-Vbe)/Rb     //base current(mA)
Ibmin=Ic/beeta      //minimum base current(mA) to go into saturation(mA)

//Results
printf ("In active region, base current is %.1e mA and collector current is %.2f mA" ,Ib,Ic)
printf ("base current and collector current in npn are %.2e mA and %.2f mA resp.",Ib,Ic)
printf ("base current minimum is %.3f mA",Ibmin)
