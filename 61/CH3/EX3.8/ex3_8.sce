//Ex3.8
//let input wave be V_in=V_p_in*sin(2*%pi*f*t) 
f=1;    //Frequency is 1Hz
T=1/f;
V_p_in=10;    //Peak input voltage
V_th=0.7;    //forward biased zener
V_Z1=5.1;
V_Z2=3.3;
clf();
subplot(121)
//let n be double the number of cycles of output shown in graph
for n=0:1:4
    t=T.*n/2:0.0005:T.*(n+1)/2    //time for each half cycle
    V_in=V_p_in*sin(2*%pi*f.*t);
    Vout=V_in;
    if modulo(n,2)==0 then    //positive half, conducts till V_in=5.8V
        a=bool2s(Vout<(V_Z1+V_th));    
        b=bool2s(Vout>(V_Z1+V_th));    
        y=a.*Vout+(V_Z1+V_th)*b;    //output follows input till 5.8V then is constant at 5.8V
    else                    //negative half, conducts till V_in=-4V
        a=bool2s(Vout<-(V_Z2+V_th));    
        b=bool2s(Vout>-(V_Z2+V_th));
        y=-(V_Z2+V_th)*a+b.*Vout;    //output follows input till -4V then stays constant at -4V
    end
        plot(t,y)
    end
xtitle('zener limiting circuit-1')
disp((V_Z1+V_th),'max voltage in volts')
disp(-(V_Z2+V_th),'min voltage in volts')
subplot(122)
xtitle('zener limiting circuit-2')
V_p_in=20;
V_Z1=6.2;
V_Z2=15;
//let n be double the number of cycles of output shown in graph
for n=0:1:4
    t=T.*n/2:0.0005:T.*(n+1)/2    //time for each half cycle
    V_in=V_p_in*sin(2*%pi*f.*t);
    Vout=V_in;
    if modulo(n,2)==0 then    //positive half, conducts till V_in=6.9V
        a=bool2s(Vout<(V_Z1+V_th));    
        b=bool2s(Vout>(V_Z1+V_th));    
        y=a.*Vout+(V_Z1+V_th)*b;    //output follows input till 6.9V then is constant at 6.9V
    else                    //negative half, conducts till V_in=-15.7V
        a=bool2s(Vout<-(V_Z2+V_th));    
        b=bool2s(Vout>-(V_Z2+V_th));
        y=-(V_Z2+V_th)*a+b.*Vout;    //output follows input till -15.7V then stays constant at -15.7V
    end
        plot(t,y)
    end
    disp((V_Z1+V_th),'max voltage in volts')
disp(-(V_Z2+V_th),'min voltage in volts')