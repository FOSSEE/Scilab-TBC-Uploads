clc;
s =%s;
Ja = 5;
disp("kg-m^2",Ja,"Ja =")
Jl = 700;
disp("kg-m^2",Jl,"Jl =");
N1 = 100;disp("turns",N1,"N1=");
N2= 1000;disp("turns",N2,"N2=");
Da = 2;disp("N-m sec/rad",Da,"Da=")
Dl = 800;disp("N-m sec/rad",Dl,"Dl=");
Tstall = 500;disp("N-m",Tstall,"Tstall=");
Wnl = 50;disp("rad/sec",Wnl,"no load frequency =");
Ea = 100;disp("volts",Ea,"Ea=");
Jm = Ja + Jl*((N1/N2))^2;
Dm = Da + Dl*((N1/N2))^2;
k = Tstall/Ea;//k = Kt/Ra
Kb = Ea/Wnl;
G = syslin('c',(k/Jm)/(s*(s+(Dm+k*Kb)/Jm)));
disp(G,"transfer function in terms of  motor position and applied voltage :");
disp(G*(N1/N2),"transfer function in terms of load position and applied voltage:")

