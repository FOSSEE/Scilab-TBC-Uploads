s=poly(0,'s')
a=(1+4*s);
b=s^2*(1+s)*(1+2*s);
d=a/b;
h=syslin('c',d);
clf();   
nyquist(h)
// add a datatip
ax=gca();
h_h=ax.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(h_h,[1.331,0.684]);
datatipSetOrientation(tip,"upper left");
