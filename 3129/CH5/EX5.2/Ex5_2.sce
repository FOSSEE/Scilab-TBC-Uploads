//Finding the Performance of a Dc-Dc converter with RL load
//Example 5.2(Page No- 174) 
clc
clear
//given data
Vs = 220;//V
R = 5;//Ohm
L = 7.5*10^-3;//H
E = 0;//V
k = 0.5;
f = 1000;//Hz
//part(a)

// I2 = I1*exp(-(kTR/L)+((Vs-E)/R*(1-exp((-(k*T*R/L))))))
// and I1 = I2*exp(-(1-k)*(T*R/L))-(E/R)*(1-exp(-(1-k)*TR/L))
//Solving these two equations to get I1 and I2
A = [0.7165 -1; 1 -0.7165];
b = [-12.473; 0]; 
x = A\b;
I1 = x(1);
I2 = x(2);  
printf('(a)\t Maximum instanteneous current I1: %.2f A',I1)

//part(b)
printf('\n (b)\t The peak instanteneous load current I2: %.2f A',I2)

//part(c)
del_I = I2-I1; //del_I
del_I_max = (Vs/R)*(tanh(R/(4*f*L)));// the maximum peak to peak ripple current
del_I_max_app = (Vs)/(4*f*L); // approximate maximum ripple current
printf('\n (c)\t del_I (I2-I1) :%.3f A',del_I);
printf('\n \t The maximum peak to peak ripple current :%0.2f A',del_I_max)
printf('\n \t Approximate maximum ripple current :%.2f A',del_I_max_app);

//part(d)
Ia = (I2+I1)/2 ;
printf('\n (d)\t The average load current is %f A',Ia);

//part(e)
Io = sqrt(I1^2 + (I2-I1)^2/3 + I1*(I2-I1));
printf('\n (e)\t rms value of load current is %.2f A',Io);

//part(f)
Is = k*Ia ;
Ri = Vs/Is ;
printf('\n (f)\t The average source current : %f A',Is);
printf('\n \t the effective input Ri :%d A',Ri);

//part(g)
Ir = sqrt(k)*sqrt(I1^2+(I2-I1)^2/3+I1*(I2-I1));
printf('\n (g)\t The rms converter current :%.2f A',Ir)



