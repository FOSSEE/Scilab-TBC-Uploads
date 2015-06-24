
//Variable declaration
Vt=1                 
Vl=12
Vm=63.63                      //peak voltage(V) as Vm=sqr root of 2*45
Idc=8.                        //charging current(A)

//Calculations
//Part a
theta1= asind((Vt+Vl)/Vm)
theta2=180-theta1
//Rl=((2*Vm*cos(theta1))-(2*(%pi-2*theta1)*(Vt+Vl)))/(Idc*%pi)
Rl=(2*sqrt(2)*45*cosd(11.8) - (2*(%pi-2*0.206)*(Vt+Vl)))/(Idc*%pi)

function ans = ft(wt)
    ans =(((((sqrt(2)*45*sin(wt))-(Vt+Vl))/Rl)*wt)**2)
endfunction
//Part b
integ = intg(theta1,theta2,ft)
disp ( integ)
Irms = (integ/%pi)**0.5
Pl=Irms**2*Rl               //power loss in resistance(W)

//Part c
P=Vl*Idc                   //power supplied to battery(W)

//results
printf ("Resistance to be added is %.2f Ohms",Rl)
printf ("power supplied to battery is %.f W",P)
