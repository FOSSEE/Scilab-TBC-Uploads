//Example 16.5.
//let input wave be V_in=V_p_in*sin(2*%pi*f*t) 
f=1;    //Frequency is 1Hz
T=1/f;
V_p_in=10;    //Peak input voltage
V_th=0.7;    //knee voltage of diode
clf();
//let n be double the number of cycles of output shown in graph
for n=0:1:1
    t=T.*n/2:0.0005:T.*(n+1)/2    //time for each half cycle
    V_in=V_p_in*sin(2*%pi*f.*t);
    Vout=V_in;
    if modulo(n,2)==0 then    //positive half,D1 conducts till V_in=5V
        a=bool2s(Vout<5);    
        b=bool2s(Vout>5);    
        y=a.*Vout+5*b;    //output follows input till 5V then is constant at 5V
    else                    //negative half, D2 conducts till V_in=-3V
        a=bool2s(Vout<-3);    
        b=bool2s(Vout>-3);
        y=-3*a+b.*Vout;    //output follows input till -3V then stays constant at -3V
    end
        plot(t,y,'r')
        
        plot(t,V_in,'-.')
       end
       hl=legend(['output','input']);
    xtitle('Positive and Negative diode limiter','t','Vo')
    disp('max output voltage is 5V')
    disp('min output voltage is -3V')