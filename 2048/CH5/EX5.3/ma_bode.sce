// Bode plot of the moving average filter, discussed in Example 5.5 on page 129
// 5.3

exec('label.sci',-1);

w = 0.01:0.01:%pi;
subplot(2,1,1);
mag = abs(1+2*cos(w))/3;
plot2d("ll",w,mag,2);
label('',4,' ','Magnitude',4);
subplot(2,1,2);
plot2d("ln",w,phasemag(1+2*cos(w)),style = 2,rect  =[0.01 -0.5 10 200]);
label('',4,'w','Phase',4)

