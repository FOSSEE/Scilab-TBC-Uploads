clear;
clc;
format('v',5);
function[P,I]=powerhert(H,P,r,B,dl)
I=H*4*r*%pi/((B*(dl))*sin(P));    
P=40*%pi*%pi*I*I*dl*dl;
disp(P*1000,'Power transmit by Hertizian dipole in mWatt');
endfunction
powerhert((5*(10)^-6),%pi/2,2000,(2*%pi),1/25);
function[P,I]=powerhw(H,P,r)
I=H*2*r*%pi*sin(P)/(cos((%pi/2)*cos(P)));R=73;    
P=(I*I*R)/2;
disp(P*1000,'Power transmit by Half wave dipole in mWatt');
endfunction
powerhw((5*(10)^-6),%pi/2,2000);
function[P,I]=powerqw(H,P,r)
I=H*2*r*%pi*sin(P)/(cos((%pi/2)*cos(P)));R=36.56;    
P=(I*I*R)/2;format('v',4);
disp(P*1000,'Power transmit by Quarterwave monopole in mWatt');
endfunction
powerqw((5*(10)^-6),%pi/2,2000);
function[P,I]=powersingloop(H,r,k);R=192.3;
I=H*r/(%pi*%pi*10*k*k);
P=(I*I*R)/2;
disp(P*1000,'Power transmit by 10 turn loop antena in mWatt');
endfunction
powersingloop((5*(10)^-6),2000,1/20);




