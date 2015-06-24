//Example 16.8.
//Positive Clamping circuit
//let input voltage be V_in=V_p_in*sin(2*%pi*f*t)
V_p_in=10;
V_DC=(V_p_in);    //DC level added to output
disp(V_DC,'V_DC in volts= ')
for n=0:1:1
    t=n/2:0.0005:(n+1)/2;
    V_in=V_p_in*sin(2*%pi*t);
    Vout=V_DC+V_in;
    plot(t,Vout)
end
xtitle('Positive clipper graph','t','Vo')