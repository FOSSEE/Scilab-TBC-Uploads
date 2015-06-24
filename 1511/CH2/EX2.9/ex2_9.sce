// Example 2.9 page no-58
clear
clc
A=60.2*10^4 //A/m^2/°K^2
B=52400    //°K
T1=2400    //°K
T2=2410    //°K
js1=A*T1^2*(%e^(-B/T1))
js2=A*T2^2*(%e^(-B/T2))
js1=floor(js1)
js2=floor(js2)
printf("\nJS1=%d A/m^2\nJS2=%d A/m^2",js1,js2)
p=(js2-js1)*100/js1
printf("\nPercentage Increase=%.2f%%",p)
