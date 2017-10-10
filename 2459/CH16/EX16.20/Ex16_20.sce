//chapter16
//example16.20
//page361

R1=3d3 // ohm
R2=4.7d3 // ohm
Rs=600 // ohm
re_dash=20// ohm
gain_beta=200

Rin_dash=R1*(R2*Rs/(R2+Rs))/(R1+(R2*Rs/(R2+Rs)))

Zout=re_dash+Rin_dash/gain_beta

printf("output impedence = %.1f ohm \n",Zout)
