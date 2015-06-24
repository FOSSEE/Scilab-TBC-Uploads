//Variable declaration
Vo=12.            //output voltage(V)
f=1.5*10**3       //frequency(Hz)
h=0.25            //second harmonic content(%) 
ho=2.5            //reduced harmonic content of output(%)
A=100             //power amplifier gain

//Calculations
Vd=Vo*h              //second harmonic content in output(V)
Vd1=Vo*ho            //reduced value of second harmonic content(V)
beta=((Vd1/Vd)-1)/A  //feedback gain from formula Vd1=Vd/(1+beta*A) 
Vs=Vo*(1+beta*A)/A   //signal voltage(V) from formula (A/(1+Beta*A))*Vs 
V=Vo/A               //signal input needed without feedback        
s=Vs/V               //additional signal amplification needed before feedback amplifier

//Results
printf ("feedback gain is %.2f",beta)
printf ("signal input to the overall system is %.1f",s)
