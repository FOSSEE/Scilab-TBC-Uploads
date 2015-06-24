//Example-2.2(a)
//let V_in=5*sin(2*%pi*f.*t) be input wave ,hence frequency=1Hz
f=1;
V_p_in=5;
V_pout=V_p_in-0.7;;
disp(V_pout,'half wave rectifier output in volts')
t_d=(asin(0.7/V_p_in))/(2*%pi*f)
//t_d is the time till which diode will be reverse biased ie, till it reaches knee voltage
T=1/f;
clf();
//let n be double the number of cycles of output shown in graph
for n=0:1:8
    t=T.*n/2:0.0005:T.*(n+1)/2    //time for each half cycle
    if  modulo(n,2)==0 then    //positive half cycle, diode is forward biased
        V_in=V_p_in*sin(2*%pi*f.*t)
        Vout=V_in-0.7           //0.7 is knee voltage of diode
        a=bool2s(Vout>0)        //replace elements of Vout by 0 till input is 0.7
        y=a.*Vout
    else                        //negative half cycle, diode is reverse biased
        [p,q]=size(t);
        y=zeros(p,q);
    end
    plot(t,y)
end
xtitle('half wave rectifier output')