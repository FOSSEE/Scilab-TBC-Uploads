clear
clc
disp("example 3.5")
ic=120 //installed capacity
ccppkw=40000 ///capital cost of plant
iand=0.15 //interest and depreciation
fco=0.64 //fuel consumption
fc=1.5//fuel cost
oc=50*10^6 //operating cost
pl=100//peak load
lf=0.6 //load factor
al=lf*pl//avarrage load
printf(" average load %dMW",al)
eg=al*8760*10^3//energy generated
printf("\n energy generated =%ekWhr",eg)
ti=ic*ccppkw //total investiment
printf("\n total investement Rs.%e",ti)
ind=ti*iand*10^3//interest and depreciation
printf("\n investement amd depression is Rs.%e",ind)
fcons=eg*fco //fual consumption
printf("\n fuel consumtion is %ekgper year",fcons)
fcost=fcons*fc//fuel cost
aco=ti+fcost+ind+oc//annual cost
printf("\n fuel cost Rs.%eper year \n annual plant cost Rs%eper  year \n generation cost Rs%fper year",fcost,aco,aco/eg)