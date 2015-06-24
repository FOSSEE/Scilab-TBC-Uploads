//chapter-6,Example6_7,pg 494

R=10*10^5//scope input impedance

C1=0.31*62*10^-12//probe capacitance

C2=22*10^-12//probe input impedance

fcut=(1/(2*%pi*R*(C1+C2)))//cutoff frequency of filter

printf("cutoff frequency\n")

printf("fcut=%.2f Hz",fcut)