// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 7")
T1=313;//air entering temperature in K
P1=1*10^5;//air entering pressure in Pa
m=50;//flow rate through compressor in kg/s
R=0.287;//gas constant in KJ/kg K
disp("i> theoretically state of air at exit can be determined by the given stage pressure ratio of 1.35.Let pressure at inlet to first stage P1 and subsequent intermediate pressure be P2,P3,P4,P5,P6,P7,P8 and exit pressure being P9.")
disp("therefore,P2/P1=P3/P2=P4/P3=P5/P4=P6/P5=P7/P6=P8/P7=P9/P8=r=1.35")
r=1.35;//compression ratio
disp("or P9/P1=k=(1.35)^8")
k=(1.35)^8
k=11.03;//approx.
disp("or theoretically,the temperature at exit of compressor can be predicted considering isentropic compression of air(y=1.4)")
y=1.4;//expansion constant 
disp("T9/T1=(P9/P1)^((y-1)/y)")
disp("so T9=T1*(P9/P1)^((y-1)/y) in K")
T9=T1*(k)^((y-1)/y)
disp("considering overall efficiency of compression 82% the actual temperature at compressor exit can be obtained")
disp("(T9-T1)/(T9_actual-T1)=0.82")
disp("so T9_actual=T1+((T9-T1)/0.82) in K")
T9_actual=T1+((T9-T1)/0.82)
disp("let the actual index of compression be n, then")
disp("(T9_actual/T1)=(P9/P1)^((n-1)/n)")
disp("so n=log(P9/P1)/(log(P9/P1)-log(T9-actual/T1))")
n=log(k)/(log(k)-log(T9_actual/T1))
disp("so state of air at exit of compressor,pressure=11.03 bar and temperature=689.18 K")
disp("ii> let polytropic efficiency be n_polytropic for compressor then,")
disp("(n-1)/n=((y-1)/y)*(1/n_polytropic)")
disp("so n_polytropic=((y-1)/y)/((n-1)/n)")
n_polytropic=((y-1)/y)/((n-1)/n)
disp("in percentage")
n_polytropic=n_polytropic*100
disp("so ploytropic efficiency=86.88%")
disp("iii> stage efficiency can be estimated for any stage.say first stage.")
disp("ideal state at exit of compressor stage=T2/T1=(P2/P1)^((y-1)/y)")
disp("so T2=T1*(P2/P1)^((y-1)/y) in K")
T2=T1*(r)^((y-1)/y)
disp("actual temperature at exit of first stage can be estimated using polytropic index 1.49.")
disp("T2_actual/T1=(P2/P1)^((n-1)/n)")
disp("so T2_actual=T1*(P2/P1)^((n-1)/n) in K")
T2_actual=T1*(r)^((n-1)/n)
disp("stage efficiency for first stage,ns_1=(T2-T1)/(T2_actual-T1)")
ns_1=(T2-T1)/(T2_actual-T1)
disp("in percentage")
ns_=ns_1*100
disp("actual temperature at exit of second stage,")
disp("T3_actual/T2_actual=(P3/P2)^((n-1)/n)")
disp("so T3_actual=T2_actual*(P3/P2)^((n-1)/n) in K")
T3_actual=T2_actual*(r)^((n-1)/n)
disp("ideal temperature at exit of second stage")
disp("T3/T2_actual=(P3/P2)^((n-1)/n)")
disp("so T3=T2_actual*(P3/P2)^((y-1)/y) in K")
T3=T2_actual*(r)^((y-1)/y)
disp("stage efficiency for second stage,ns_2=(T3-T2_actual)/(T3_actual-T2_actual)")
ns_2=(T3-T2_actual)/(T3_actual-T2_actual)
disp("in percentage")
ns_2=ns_2*100
disp("actual rtemperature at exit of third stage,")
disp("T4_actual/T3_actual=(P4/P3)^((n-1)/n)")
disp("so T4_actual=T3_actual*(P4/P3)^((n-1)/n) in K")
T4_actual=T3_actual*(r)^((n-1)/n)
disp("ideal temperature at exit of third stage,")
disp("T4/T3_actual=(P4/P3)^((n-1)/n)")
disp("so T4=T3_actual*(P4/P3)^((y-1)/y) in K")
T4=T3_actual*(r)^((y-1)/y)
disp("stage efficiency for third stage,ns_3=(T4-T3_actual)/(T4_actual-T3_actual)")
ns_3=(T4-T3_actual)/(T4_actual-T3_actual)
disp("in percentage")
ns_3=ns_3*100
disp("so stage efficiency=86.4%")
disp("iv> from steady flow energy equation,")
disp("Wc=dw=dh and dh=du+p*dv+v*dp")
disp("dh=dq+v*dp")
disp("dq=0 in adiabatic process")
disp("dh=v*dp")
disp("Wc=v*dp")
disp("here for polytropic compression ")
disp("P*V^1.49=constant i.e n=1.49")
n=1.49;
disp("Wc=(n/(n-1))*m*R*T1*[((P9/P1)^((n-1)/n))-1] in KJ/s")
Wc=(n/(n-1))*m*R*T1*[((k)^((n-1)/n))-1]
disp("due to overall efficiency being 90% the actual compressor work(Wc_actual)=Wc*0.9 in KJ/s")
Wc_actual=Wc*0.9
disp("so power required to drive compressor =14777.89 KJ/s")














