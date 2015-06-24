s=poly(0,'s')
a=(s+1)*(s+2)*(s+1.5);//denominator of transfer function
h=syslin('c',1/a);//here G(s)H(s)is represented by h

clf();    nyquist(h)
// add a datatip
ax=gca();
h_h=ax.children($).children(2);//handle on Nyquist curve of h
tip=datatipCreate(h_h,[1.331,0.684]);
datatipSetOrientation(tip,"upper left");
