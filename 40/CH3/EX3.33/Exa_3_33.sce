//discrete auto correlation and cross correlation
x=[2 5 0 4];
h=[3 1 4];
x1=x(length(x):-1:1)
h1=h(length(h):-1:1)
rxhn=convol(x,h1)
rhxn=convol(x1,h)
rhxn1=rhxn(length(rhxn):-1:1)
//we observe that rhxn1=rxhn
x=[3 1 -4];
x1=x(length(x):-1:1)
rxxn=convol(x,x1)
//we observe that rxxn is even symmetric about origin
