clc;
clear all;
//page no 159
//prob no. 5.8

//function for ascending pulse
function V=pulse_a()
    V=[]
    for i=1:.005:1.5
        V=[V i]
    end
endfunction
//function for descending pulse
function V=pulse_d()
    V=[]
    for i=1.5:-.005:1
        V=[V i]
    end
endfunction
fLO=200-10;

//for fLO=190 MHz
f=[0:.01:10.5+.01];   //x axis

V=[zeros(0:.01:199.5-fLO-.01) pulse_a() 0];      //y axis
clf;
subplot(211);
plot2d(f,V,[5],rect=[0,0,12,2])
xtitle('Spectral diagram:for fLO=190','f,MHz','V(f)');

//for fLO=210
fLO=200+10;    //MHz
f=[0:.01:10.5+.01];   //x axis

V=[zeros(0:.01:-200.5+fLO-.01) pulse_d() 0];      //y axis
subplot(212);
plot2d(f,V,[5],rect=[0,0,12,2])
xtitle('Spectral Diagram:for fLO=210','f,MHz','V(f)');
