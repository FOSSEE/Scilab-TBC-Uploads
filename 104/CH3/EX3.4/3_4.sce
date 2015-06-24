//masons gain formula applied to SFG in figure 3-8(d)
//two forward paths
syms a12 a23 a24 a25 a32 a34 a43 a44 a45
M1=a12*a23*a34*a45
M2=a12*a25
//four loops
L11=a23*a32
L21=a34*a43
L31=a24*a32*a43
L41=a44
//one pair of non touching loops
L12=a23*a32*a44
delta=1-(L11+L21+L31+L41)+(L12)
delta1=1
delta2=1-(L21+L41)
x=(M1*delta1+M2*delta2)/delta
disp(x,"y5/y1=")
//if y2 is output node
M1=a12
delta1=1-(L21+L41)
y=(M1*delta1)/delta
disp(y,"y2/y1=")