clc
// given data

i=12.0/100 // interest rate
ProjAdisB=[0,536.0,478,427,381,340] // discounted benefit for A
ProjAdisC=[2400.0,0,0,0,0,0] // discounted cost for A
ProjBdisB=[0,714.0,638,569,509,454] // discounted benefit for B
ProjBdisC=[2400.0,0,0,0,0,0]  // discounted cost for B
ProjCdisB=[0,446.0,558,641,699,738] // discounted benefit for C
ProjCdisC=[2400.0,0,0,0,0,0] // discounted cost for C

BCforA=sum(ProjAdisB)/sum(ProjAdisC)  // B mius C ratio
BCforB=sum(ProjBdisB)/sum(ProjBdisC) // B mius C ratio
BCforC=sum(ProjCdisB)/sum(ProjCdisC) // B mius C ratio
printf( "\nB - C for project A is %.1f",BCforA)
printf( "\nB - C for project B is %.1f",BCforB)
printf( "\nB - C for project C is %.2f",BCforC)
