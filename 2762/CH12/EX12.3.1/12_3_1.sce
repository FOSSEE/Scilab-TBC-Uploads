//Transport Processes and Seperation Process Principles
//Chapter 12
//Example 12.1-1
//Liquid Liquid and Fluid Solid Seperation Process
//given data
t=[0 3 3.5 4 4.5 5 5.5 6 6.2 6.5 6.8];
cbyc0=[0 0 0.002 0.030 0.155 0.396 0.658 0.903 0.933 0.975 0.993];
ncbyc0=1-cbyc0
plot2d(t,cbyc0)
xtitle("Breakthrough curve","time,t h","c/c0")
v = inttrap(t,ncbyc0)
mprintf("the break point time as seen from the graph is 3.65 h");
tb=3.65;
cbyc01=[0 0.002 0.030 0.1];
t1=[0 3 3.5 3.65];
ncbyc01=1-cbyc01
v1 = inttrap(t1,ncbyc01)
mprintf(" the fraction capacity broken to the used point is %f",tb/v)
//total bed length: Hb=(tu/tt)*Ht
Ht=14;
Hunb=(1-v1/v)*Ht;//ht of unused bed
Hb=(v1/v)*Ht;
mprintf(" the total bed length is %f ",Hunb)
//b) tb=6, hence new bed height Hbb
tbn=6;
Hbb=(tbn/tb)*Hb;
HT=Hbb+Hunb;
AFR=754*3600*0.00115;//air flow rate=754 cm3/s, 1h=3600s, density=0.00115 g/cm3
c0=600;//inlet stream concn of 600 ppm
TAA=(c0/(10^6))*AFR*v;//total alcohol absorbed
m=79.2;//mass of carbon present in grams
SC=TAA/m;//saturation capacity
mprintf("fraction of new bed used up to the break point is %f",Hbb/HT)
