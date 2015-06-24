//Chapter 3
//Example 3_12
//Page 54

clear;clc;

c=[0 600 200 800 0; 200 0 1000 0 200; 0 200 1200 0 200];
t=[8 6 2 6 2];

for i=1:3
  energy(i)=0;
  sum_md=0;
  md(i)=max(c(i,:));
  printf("Max demand of customer %i = %.0f W \n\n",i, md(i));
    
  for j=1:5
    energy(i)=energy(i)+c(i,j)*t(j);
   
  end;
  sum_md=sum_md+md(i);
  lf(i)=energy(i)/md(i)/24*100;
  
  printf("Load factor of customer %i = %.2f %% \n\n", i,lf(i));
  
end;

for j=1:5
  sum_c(j)=0;
  for i=1:3
    
    sum_c(j)=sum_c(j)+(c(i,j));
    
  end;
end;
sim=max(sum_c);
df=sum(md)/sim;
printf("Diversity factor = %.2f \n\n", df);

slf=sum(energy)/sim/24;
printf("Station load factor = %.2f %% \n\n", slf*100);


 



  