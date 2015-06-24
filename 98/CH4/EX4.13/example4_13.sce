//Chapter 4
//Example 4_13
//Page 80

clear;clc;

md=100;
lf=0.3;
hp=1e8;
max0(2)=40;

cc=[1250 2500];
id=[0.12 .1];
oc=[0.05 0.015];
tc=[0 0.002];

ugpa=md*lf*8760*1000;
printf("Units generated per annum = %.0f kWh \n\n", ugpa);

printf("STEAM IN CONJUNCTION WITH HYDRO STATION\n");
u(2)=hp;
u(1)=ugpa-u(2);
printf("Units supplied by hydro station = %.0f kWh \n\n", u(2));
printf("Units supplied by steam station = %.0f kWh \n\n", u(1));


max0(1)=md-max0(2);
printf("Maximum output of steam station = %.0f MW \n\n", max0(2));

for i=1:2
  if i==1
    printf("\n(a) Steam station\n");
  end;
  
  if i==2
    printf("\n(b) Hydro station\n");
  end;
  
  capc(i)=max0(i)*1000*cc(i);
  aid(i)=id(i)*capc(i); 
  opc(i)=oc(i)*u(i);
  trc(i)=tc(i)*u(i);
  tac(i)=opc(i)+trc(i)+aid(i);
  
  printf("Capital cost = Rs. %.0f \n", capc(i));
  printf("Annual interest and depreciation = Rs. %.0f \n", aid(i));
  printf("Operating cost = Rs. %.0f \n", opc(i));
  printf("Transmission cost = Rs. %.0f \n", trc(i));
  printf("Total annual cost = Rs. %.0f \n\n", tac(i));
  
end;

t=sum(tac);
printf("Total annual charges for both steam and hydro stations = Rs. %.0f \n", t);
o_c=t/ugpa;
printf("Overall cost per kWh = Rs. %.5f \n\n", o_c);

for j=1:2
  
  if j==1
    printf("\nSTEAM STATION\n");
  end;

  if j==2
    printf("\nHYDRO STATION\n");
  end;
  
  cct(j)=cc(j)*md*1000;
  a_id(j)=id(j)*cct(j);
  fc(j)=a_id(j)/ugpa;
  opct(j)=oc(j);
  trct(j)=tc(j);
  ovct(j)=fc(j)+opct(j)+trct(j);
  
  printf("Capital cost = Rs. %.0f \n", cct(j));
  printf("Annual interest and depreciation = Rs. %.0f \n", a_id(j));
  printf("Fixed charges/kWh = Rs. %.5f \n", fc(j));
  printf("Operating cost/kWh = Rs. %.4f \n", opct(j));
  printf("Transmission cost/kWh = Rs. %.4f \n", trct(j));
  printf("Overall/kWh cost = Rs. %.5f \n\n", ovct(j));
end;

  
  

  
