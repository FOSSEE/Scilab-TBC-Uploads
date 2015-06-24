clc
clear
disp('example 4 7')
pl1=20;pf1=0.8;t1=2000//load in MVA //power factor //duration
pl2=10;pf2=0.8;t2=1000//load in MVA //power factor //duration
pl3=2;pf3=0.8;t3=500//load in MVA //power factor //duration
pt=20 ///transformar power rating
fte=0.985;ste=0.99 ///full load efficiency for first and second transformer
ftl=120;stl=90 //core  loss inKW for first and  second transformer
cst=200000;//cost of second transformer with compared with first transformer
aid=0.15;//annual  interest and depreciation
ce=0.8 //cost of energy
tfl=pt*(1-fte)*1000//total full load
fle=tfl-ftl //full load copper loss
elc=fle*t1+(fle*t2/(pt/pl2)^2)+(fle*t3/(pt/pl3)^2) //energy loss due to copper loss
eli=ftl*(t1+t2+t3)//energy loss due to iron loss
celo=(elc+eli)*ce //cost of energy loss
disp("   first transformer")
printf(" total full load losses %dkW \n full load copper losses %dkW \n energy loss due to copper losses %dkWh/year\n energy loss due to iron losses %dkWh/year \n cost of energy losses Rs%dper year",tfl,fle,elc,eli,celo)
stfl=pt*(1-ste)*1000//total full load
sle=stfl-stl//full load copper loss
selc=sle*t1+(sle*t2/(pt/pl2)^2)+(sle*t3/(pt/pl3)^2)//energy loss due to copper loss
seli=stl*(t1+t2+t3)//energy loss due to iron loss
scelo=(selc+seli)*ce//cost of energy loss
disp("   second transformer")
printf(" total full load losses %dkW \n full load copper losses %dkW \n energy loss due to copper losses %dkWh/year\n energy loss due to iron losses %dkWh/year \n cost of energy losses Rs%dper year",stfl,sle,selc,seli,scelo)
aidc=stfl*aid*1000
tybc=aidc+scelo
printf("additional interest and depreciation due to higher cost of second transformer Rs%d \n total yearly charges for second transformer Rs%d per year",aidc,tybc)