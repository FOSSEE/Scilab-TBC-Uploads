p1=2*10^16;  ////say p1 is in p-region
Na=2*10^16;
ni=10^10;
n1=ni^2/p1;  //say n1 is in p-region
printf('\n The value of n in p-region is %f/cm^3',n1);
n2=9*10^16;  //say n2 is in n-region
p2=(ni^2)/n2;  //say p2 is in n-region
printf('\n The value of p in n-region is %f/cm^3',p2);
a=0.0259;
pp=2*10^16;
nn=9*10^16;
Vbi=a*log(pp*nn/(ni^2));  //say  a=K*T/q at room temp. i.e., 300k
printf('\n The value of Vbi,built-in-potential at 300K is %fV',Vbi);
b=0.0345;  //say b=K*T/q at 400k
ni1=4.52*10^12;  //say ni at 400K=ni1
Vbi1=b*log(pp*nn/(ni1^2));  //say Vbi1 is built in potential at 400K
printf('\n The value of Vbi,built-in-potential at 400K is %fV',Vbi1);