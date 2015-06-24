clc;
clear all;
//page no 160
//prob no. 5.9

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
//plots of page 161
//spectrum at point 1
f1=[17.5-.01:.01:20.5+.01];   //x axis

V1=[0 pulse_d() zeros(18.5+.01:.01:19.5-.01) pulse_a() 0];      //y axis
clf;
subplot(221);
plot2d(f1,V1,[5],rect=[17,0,21,2])
xtitle('Spectrum at Point 1','f,MHz','');

//spectrum at point 2
f2=[17.5-.01:.01:20.5+.01];   //x axis

V2=[0 zeros(17.5:.01:19.5-.01) pulse_a() 0];      //y axis
subplot(222);
plot2d(f2,V2,[5],rect=[17,0,21,2])
xtitle('Spectrum at Point 2','f,MHz','');

//spectrum at point 3
f3=[359.5-.01:.01:400.5+.01];   //x axis

V3=[0 pulse_d() zeros(360.5+.01:.01:399.5-.01) pulse_a() 0];      //y axis
subplot(223);
plot2d(f3,V3,[5],rect=[359,0,401,2])
xtitle('Spectrum at Point 3','f,MHz','');

//spectrum at point 4
f4=[359.5-.01:.01:400.5+.01];   //x axis

V4=[0 zeros(359.5:.01:399.5-.01) pulse_a() 0];      //y axis
subplot(224);
plot2d(f4,V4,[5],rect=[359,0,401,2])
xtitle('Spectrum at Point 4','f,MHz','');
