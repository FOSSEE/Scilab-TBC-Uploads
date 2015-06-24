s=poly(0,'s')
h=syslin('c',1/((s+1)*(s+2)*(s+3)));
clf();    nyquist(h)
// add a datatip
ax=gca();
h_h=ax.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(h_h,[1.331,0.684]);
datatipSetOrientation(tip,"upper left");
k=kpure(h)
disp(k,"the system is stable for0 <k<");
