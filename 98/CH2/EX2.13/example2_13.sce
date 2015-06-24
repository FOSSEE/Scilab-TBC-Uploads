//Chapter 2
//Example 2_13
//Page 26

clear;clc;

d=[500 520 850 800 875 900 546];
days=7;
h=15;
n_overall=0.85;
lf=0.4;

scf(0)
bar(d, 1, 'red');
xlabel('Days');
ylabel('Discharge')
xgrid(0);

//Average daily discharge
avg=sum(d)/days;
printf("(i) Average daily discharge = %.0f m^3/sec \n\n", avg);

//Pondage required
vol=0;
j=0;
for i=1:7
  if d(i)<avg
    vol= vol+d(i);
    j=j+1;
  end;
end;

v=vol*24*3600;
v_req=j*avg*24*3600;
p=v_req-v;
printf("(ii) Pondage required = %.0f m^3 \n\n", p);

//Installed capacity
w=avg*1000*9.81;
app=w*h*n_overall;
ic=app/lf;
printf("(iii) Installed capacity of the plant = %.0f MW \n\n", ic/1e6);
