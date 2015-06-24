clc;
clear all;
//page no 157
//prob no. 5.6

fLO=110;    //MHz
//for V2(f)
f=[0:.01:231+.01];   //x axis
function V=pulse()
    V=[]
    for i=1:.005:1.5
        V=[V i]
    end
endfunction
V2=[zeros(0:.01:120-fLO-.01) pulse() zeros(121-fLO+.01:.01:120+fLO-.01) pulse() 0];      //y axis
clf;
subplot(211);
plot2d(f,V2,[5],rect=[0,0,240,2])
xtitle('Spectral diagram','f,MHz','V2(f)');

//for V3(f)
f=[0:.01:11+.01];   //x axis
V3=[zeros(0:.01:120-fLO-.01) pulse() 0];      //y axis
subplot(212);
plot2d(f,V3,[5],rect=[0,0,20,2])
xtitle('Spectral Diagram','f,MHz','V3(f)');
