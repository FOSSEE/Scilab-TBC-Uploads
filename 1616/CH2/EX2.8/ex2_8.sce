//ex2.8  in the previous problem find the reflectioon coefficient at load end and at 20cm from the load
zo=complex(10,0.0358);
zl=complex(10,20);
Tl=(zl-zo)/(zl+zo);
disp('reflection coefficient at load-end is= '+string(Tl));
k=complex(0.055,12.566);
l=0.2;
Tl2=Tl*exp(-2*k*l);
disp('reflection coefficient at 20cm is= '+string(Tl2));
