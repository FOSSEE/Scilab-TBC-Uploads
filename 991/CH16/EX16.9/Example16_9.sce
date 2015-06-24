//Example 16.9.
//Negative Clamping circuit
//let input voltage be V_in=V_p_in*sin(2*%pi*f*t)
V_p_in=12;
V_DC=-(V_p_in);    //DC level added to output
disp(V_DC,'V_DC in volts= ')
for n=0:1:1
    t=n/2:0.0005:(n+1)/2;
    V_in=V_p_in*sin(2*%pi*t);
    Vout=V_DC+V_in;
    plot(t,Vout)
end
xtitle('Negative clipper graph','t','Vo')