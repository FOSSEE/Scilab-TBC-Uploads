//Ex2.10
//let input wave be V_in=V_p_in*sin(2*%pi*f*t) 
f=1;    //Frequency is 1Hz
T=1/f;
R_1=100;    //Resistances in ohms
R_L=1000;    //Load
V_p_in=10;    //Peak input voltage
V_th=0.7;    //knee voltage of diode
clf();
V_p_out=V_p_in*(R_L/(R_L+R_1));    //peak output voltage
disp(V_p_out,'peak output voltage in volts')
//let n be double the number of cycles of output shown in graph
for n=0:1:6
    t=T.*n/2:0.0005:T.*(n+1)/2    //time for each half cycle
    V_in=V_p_in*sin(2*%pi*f.*t);
    Vout=V_in*(R_L/(R_L+R_1));
    if modulo(n,2)==0 then    //positive half, diode reverse biased
        y=Vout;
    else                    //negative half, diode forward biased
        a=bool2s(Vout<-0.7);    //puts zero to elements for which diode will conduct
        b=bool2s(Vout>-0.7);
        y=-V_th*a+b.*Vout;
    end
        plot(t,y)
    end
xtitle('Negative limiter graph')