s=poly(0,'s')//lets assume T1=1 nad T2=2 and we have considered unity feedback system
h=syslin('c',1/(s^2+3*s+1));
clf();    nyquist(h)
// add a datatip
ax=gca();
h_h=ax.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(h_h,[1.331,0.684]);
datatipSetOrientation(tip,"upper left");
