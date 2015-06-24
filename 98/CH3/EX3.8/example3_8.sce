//Chapter 3
//Example 3_8
//Page 52

tl=[10 12 15];
tdf=[0.65 0.6 0.7];
tdg=[1.5 3.5 1.5];
df=1.3;
total=0;

//maximum load
n=3;
for i=1:n;
  sum_md(i)=tl(i)*tdf(i);
  printf("Sum of maximum demands on transformer %i = %.2f kW \n\n", i,   sum_md(i));
  md(i)=sum_md(i)/tdg(i);
  printf("Maximum demand on transformer %i = %.3f kW \n\n", i, md(i));
  total=total+md(i);
end;

mdf=total/df;
printf("Maximum demand on feeder = %.2f kW \n\n", mdf)
  