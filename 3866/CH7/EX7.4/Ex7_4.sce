clc; close; clear;

mprintf('For 1st model:\n\n');
mprintf(' Total delay=T1\n');
mprintf(' T1=Rinv*C1+(Rinv+Rtg)*C2+(Rinv+2*Rtg)*C3\n');
mprintf('       Rinv=R and Rtg=R\n');
mprintf(' C1=(3*Ceff*W)+(Cg*W)+(2*Ceff*W)\n');
mprintf(' C2=(Cg*W*2)+(6*Ceff*W)\n');
mprintf(' C3=(4*Ceff*W)+(Cg*W)+(3*f*Cg*W)\n');
mprintf(' T1=R*W*((29*Ceff)+(8*Cg)+(9*f*Cg))\n\n\n');
mprintf(' For 2nd model:\n\n');
mprintf(' Total delay=T2\n');
mprintf(' T2=Rinv*C4+(Rinv+Rtg)*C5\n');
mprintf('       Rinv=R and Rtg=R\n');
mprintf(' C4=(3*Ceff*W)+(2*Ceff*W)+(Cg*W)\n');
mprintf(' C5=(8*ceff*W)+(Cg*W)+(3*f*Cg*W)\n');
mprintf(' T2=R*W*((21*Ceff)+(3*Cg)+(6*f*Cg))\n\n');
mprintf(' Comparing two models, MUX1 is slower than MUX2');
