//Ex2.12
//Positive diode limiter
//Let input wave be V_in=V_p_in*sin(2*%pi*f*t)
f=1;    //let frequency be 1Hz
T=1/f;
V_p_in=18;    //peak input voltage is 18V
V_supply=12;
R2=100;
R3=220;    //resistances in ohms
V_bias=V_supply*(R3/(R2+R3));
V=V_bias+0.7;    //waveform clipped at V
clf();
//let n be double the number of cycles of output wave shown in graph
for n=0:1:8
    t=n*T/2:0.0005:T.*(n+1)/2;
    V_in=V_p_in*sin(2*%pi*f.*t);
    Vout=V_in;
    if modulo(n,2)==0 then    //positive half, diode conucts till V
        a=bool2s(Vout<V);
        b=bool2s(Vout>V);
        y=a.*Vout+V*b;
    else                    //negative half cycle, output follows input
      y=Vout;
    end
    plot(t,y)
end
xtitle('Positive diode limiter graph')
disp(V,'diode limiting the voltage at this voltage')