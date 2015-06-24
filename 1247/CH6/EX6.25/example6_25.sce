clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.25
// Page 405
printf("Example 6.25, Page 405 \n \n");

// solution

//stream M2
Vcaco3M2 = .349/2.711
VliqrM2 = .651/1.167
VslryM2 = Vcaco3M2+VliqrM2
spgM2 = 1/VslryM2
FsM2 = 2.845*3600*spgM2
sM2 = FsM2*.349 // kg/h
liqrM2 = FsM2*.651
Na2OM2 = liqrM2*.1342/1.167
//stream O2
FsO2 = 14.193*3600*1.037 // kg/h
sO2 = FsO2*.0003
liqrO2 = FsO2-sO2
Na2OO2 = liqrO2*.0272/1.037
//stream M1
VM1 = .194/2.711 + .806/1.037 // l
spgM1 = 1/VM1
FsM1 = 5206.9/.194
liqrM1 = FsM1 - 5206.9
Na2OM1 = liqrM1*.0252/1.034
// stream O1
FsO1 = FsO2+FsM1-FsM2
sO1 = FsO1*.0002
liqrO1 = FsO1 - sO1
Na2OO1 = liqrO1*.0096/1.014
// stream W
VW = .037/2.711 + .963
spgW = 1/VW
FsW = 14.977*3600*spgW
sW = FsW*.037
liqrW = FsW-sW
Na2OW = liqrW*.0024
// stream Mo
VMo = .402/2.711 + .598/1.022
spgMo = 1/VMo
FsMo = 3.627*3600*spgMo
sMo = FsMo*.402
liqrMo = FsMo - sMo
Na2OMo = liqrMo*.0162/1.022
printf(" Material balance thickener \n \n ITEM                     STREAM, kg/h\n                        M2             O2              M1              O1             W              Mo\n Slurry              "+string(FsM2)+"      "+string(FsO2)+"      "+string(FsM1)+"      "+string(FsO1)+"      "+string(FsW)+"      "+string(FsMo)+"\n Suspended solids    "+string(sM2)+"      "+string(sO2)+"      "+string(sM2)+"      "+string(sO1)+"      "+string(sW)+"      "+string(sMo)+"\n Liquor              "+string(liqrM2)+"      "+string(liqrO2)+"      "+string(liqrM1)+"      "+string(liqrO1)+"        "+string(liqrW)+"      "+string(liqrMo)+" \n Na2O                "+string(Na2OM2)+"      "+string(Na2OO2)+"      "+string(Na2OM1)+"      "+string(Na2OO1)+"      "+string(Na2OW)+"       "+string(Na2OMo)+"")
