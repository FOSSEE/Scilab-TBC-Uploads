clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 10.6
//Caption : Program To Find the Composition of Vapor and Liquid Phases

//Given Values
z=[0.1,0.2,0.7];
K=[10,1.76,0.52];

V_01=[0.1:0.1:1]
for(i=1:10)
  for(j=1:3)
    y_01(i,:)=approx((z.*K)./(1+(V_01(i)*(K-1))),3);
  end  
  Sum(i)=sum(y_01(i,:));
end    

for(i=1:10)
  if(Sum(i+1)<1)
    a1=V_01(i);
    i=-1;
    break;
  end
end

V_001=[a1:0.01:a1+0.1]
for(i=1:10)
  for(j=1:3)
    y_001(i,:)=approx((z.*K)./(1+(V_001(i)*(K-1))),3);
  end  
  Sum(i)=sum(y_001(i,:));
end    

for(i=1:10)
  if(Sum(i+1)<1)
    a01=V_001(i);
    i=-1;
    break;
  end
end

V_0001=[a01:0.001:a01+0.01];

for(i=1:10)
  for(j=1:3)
    y_0001(i,:)=approx((z.*K)./(1+(V_0001(i)*(K-1))),3);
  end  
  Sum(i)=sum(y_0001(i,:));
end    

for(i=1:10)
  if(Sum(i+1)<1)
    a001=V_0001(i);
    i=-1;
    break;
  end
end
V=a001;
y_02=approx((z.*K)./(1+(a1*(K-1))),3);
y_03=approx((z.*K)./(1+((a1+0.1)*(K-1))),3);
y_0273=approx((z.*K)./(1+(V*(K-1))),3);
x_0273=approx(y_0273./K,3);

Ans=[z',K',y_02',y_03',y_0273',x_0273';1,0,sum(y_02),sum(y_03),sum(y_0273),approx(sum(x_0273),2)];
disp(Ans,'   z      K      y,V=0.2  y,V=0.3  y,V=0.273 x,V=0.273')
disp('NOTE : Last Row represents the summation')
disp('Hence for V = 0.273 E(yi) = 0 and E(xi) = 0')
disp(V,'Fraction of Vapor (V) = ')

//End