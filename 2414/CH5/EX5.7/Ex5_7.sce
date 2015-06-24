clc;
clear all;
//page no 158
//prob no. 5.7

fLO=40;    //MHz
//function for ascending pulse
function V=pulse_a()
    V=[]
    for i=1:.005:2
        V=[V i]
    end
endfunction
//function for descending pulse
function V=pulse_d()
    V=[]
    for i=2:-.005:1
        V=[V i]
    end
endfunction

//for V2(f)
f=[0:.01:48+.01];   //x axis

V2=[zeros(0:.01:-8+fLO-.01) pulse_d() zeros(-6+fLO+.01:.01:6+fLO-.01) pulse_a() 0];      //y axis
clf;
subplot(211);
plot2d(f,V2,[5],rect=[0,0,50,2])
xtitle('Spectral diagram','f,MHz','V2(f)');

//for V3(f)
f=[0:.01:48+.01];   //x axis

V3=[zeros(0:.01:6+fLO-.01) pulse_a() 0];      //y axis
subplot(212);
plot2d(f,V3,[5],rect=[0,0,50,2])
xtitle('Spectral Diagram','f,MHz','V3(f)');
