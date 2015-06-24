//Exa 13.2
clc;
clear;
close;
//given data :
//initial cash outflows
ICO=80000;//in Rs.
//cash in flows of 10 years
CIF1=14000;//in Rs.
CIF2=14000;//in Rs.
CIF3=14000;//in Rs.
CIF4=14000;//in Rs.
CIF5=14000;//in Rs.
CIF6=16000;//in Rs.
CIF7=20000;//in Rs.
CIF8=30000;//in Rs.
CIF9=20000;//in Rs.
CIF10=8000;//in Rs.
//Cummulative cash in flows of 10 years
CumCIF1=14000;//in Rs.
CumCIF2=28000;//in Rs.
CumCIF3=42000;//in Rs.
CumCIF4=560000;//in Rs.
CumCIF5=70000;//in Rs.
CumCIF6=86000;//in Rs.
CumCIF7=106000;//in Rs.
CumCIF8=136000;//in Rs.
CumCIF9=156000;//in Rs.
CumCIF10=164000;//in Rs.
//average annual CIF
AvgCIF=CumCIF10/10;
//Average Depreciation per annum
AvgD=ICO/10;
//average investmet
AvgINV=40000;//in Rs
//Calculation of average rate of return
ARR=((AvgCIF-AvgD)/AvgINV)*100;//in %
disp(ARR,"Average rate of return of the project(in %) is : ")
//Average annual cash in flow
AvgCIF=CIF10/10;//in Rs
//Annual Depreciation
ScrapValue=0;
ADep=(ICO-ScrapValue)/10;//in Rs
//Average investment
AvgInv=(ICO+ScrapValue)/2;//in Rs