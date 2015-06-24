clc;
close();
//page no 227
//prob no. 7.1
t=linspace(0,20);
function {theta]=theta(t)     //function for instantanious phase
    theta=3*%pi*t^2;
endfunction
function {fs]=frequency(t)     //function for instantanious phase
    Ws=6*%pi*t;
    fs=Ws/(2*%pi);
endfunction
subplot(2,1,1)
plot(t,theta,1);
xtitle('Plot1:Instantanious signal phase','t','theta',1);
fs=frequency(t);
subplot(2,1,2)
plot(t,fs,2);
xtitle('Plot2:Frequency','t','fs',1);
