//a
//parameter values 
Kp = 0.5; //V/rad 
Ka = 100; //V/V
Km = 2*10^-4 ; //lb-ft/V
F = 1.5*10^-4; //lb-ft/rad/s
J = 10^-5 //slug-ft^2

K = Kp*Ka*Km ; //loop propotional gain
dr = F/(2*sqrt(K*J)); //damping ratio
wn = sqrt(K/J);
ts = 5/(dr*wn);
wd = wn*sqrt(1 - dr^2); //frequency at which damped oscillations occur 
disp("a")
disp(wd, "damped oscillations occur at a frequency = ")
disp(dr,"damping ratio = ")

//b
Tl = 10^-3; //load disturbance (lb-ft)
e = Tl/K; //position lag error 
disp("b")
disp(e,"position lag error (in rad) = ")

//c
KaNew = (e/0.025)*Ka; //new loop gain
disp("c")
disp(KaNew,"new loop gain for which the position lag error is equal to  0.025rad = ")

//d
drNew = F/(2*sqrt(Kp*KaNew*Km*J)); //new damping ratio
disp("d")
disp(drNew,"new damping ratio = ")

//e
//for a maximum overshoot of 25% , (F + Qo)/2*sqrt(K*J) = 0.4
Qo = (0.4*2*sqrt(Kp*KaNew*Km*J)) - F ; 
Ko = Qo/(KaNew*K) ; //output gain factor 
disp("e")
disp(Ko,"output gain factor = ")