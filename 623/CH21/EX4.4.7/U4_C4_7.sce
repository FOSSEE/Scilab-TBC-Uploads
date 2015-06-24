//variable initialization
mu=9.27*10^-24;                                                                 //(J/T)
B=0.45;                                                                         //magnetic field (μb/m^2)
h=1.054*10^-34;                                                                 //Plank's constant (Js)
k=[5/3 1 1/3 -1/3 -1 -5/3];                                                     //value of g'Mj'-gMj

//calculation
c=(mu*B)/h;                                                                     //constant (rad/s)
deltaomega1=c*k(1);                                                             //displacement of Zeeman component (rad/s)
deltaomega2=c*k(2);                                                             //displacement of Zeeman component (rad/s)
deltaomega3=c*k(3);                                                             //displacement of Zeeman component (rad/s)
deltaomega4=c*k(4);                                                             //displacement of Zeeman component (rad/s)
deltaomega5=c*k(5);                                                             //displacement of Zeeman component (rad/s)
deltaomega6=c*k(6);                                                             //displacement of Zeeman component (rad/s)

printf("\ndisplcement of Zeeman component = %.2e, %.2e, %.2e, %.2e, %.2e, %.2e rad/s",deltaomega1,deltaomega2,deltaomega3,deltaomega4,deltaomega5,deltaomega6);
