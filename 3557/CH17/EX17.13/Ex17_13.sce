//Example 17.13//

ue=0.070;//Electron Mobility CdTe (From table 17.5)
uh=0.007;//holes Mobility CdTe (From table 17.5)
fe=ue/(ue+uh)
mprintf("fe = %f ",fe)
fh=uh/(ue+uh)
mprintf("\nfh = %f ",fh)
