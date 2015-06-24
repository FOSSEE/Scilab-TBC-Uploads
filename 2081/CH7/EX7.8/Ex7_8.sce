r0=2*10^3
r1=1*10^3
nl=4//no. of large cells
ns=(r0/r1)^2*nl-1//split cells within area=split cells within square-1
ncpl=120
n2=nl*ncpl//no. of channels without cell splitting
ncps=120
n1=ns*ncps//no. of channels with cell splitting
inc=n1/n2//increase in the number of cells
disp(inc,'increase in the number of cells in times')
