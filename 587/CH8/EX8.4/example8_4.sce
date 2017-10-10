clear;
    clc;
    
    //Example8.4[Pressure Drop in a Water tube]
    Tw=15;//temp of water while entering[degree Celcius]
    rho=999.1;//[kg/m^3]
    mu=1.138*10^(-3);//Viscosity[kg/m.s]
    id=0.05;//Internal diameter[m]
    V=5.5*10^(-3);//Flow rate[m^3/s]
    l=60;//length of tube[m]
    e=0.002*10^(-3);//[m]
    //Solution:-
    v=V/(%pi*(id^2)*(1/4));//Mean Velocity[m/s]
    Re=rho*v*id/mu;
    disp(Re,"Reynolds Number is")
    //Flow is turbulent
    r=e/id;//Relative roughness of the tube
    function[Func]=fric(fac)
        Func(1)=(1/(fac(1)^(1/2)))+(2*log((0.00004/3.7)+(2.51/(122900*fac(1)^(1/2)))));
        deff('[Func]=fric(fac)',['fric_1=(1/(fac(1)^(1/2)))+(2*log((0.00004/3.7)+(2.51/(122900*fac(1)^(1/2)))))'])
    endfunction
    
    xa = 3.99*10^-3;
    xs = fric(xa);)
    
    disp(xs,"Friction Factor is")
    del_P=xs*l*rho*(v^2)/(2*id);//[kPa]
    disp("Pa",del_P,"The pressure drop is")
    W_pump=V*del_P;//[W]
    disp("W",W_pump,"The required poer input tp overcome the frictional losses in the tube is")