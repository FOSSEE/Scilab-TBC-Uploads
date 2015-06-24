//              Case Study:-Chapter 6
//               3.Minimum Cost

for p=0:0.1:10
    cost=48-8*p+p^2;
    if(p==0) ,
        cost1=cost;
        continue;        //Use of continue statement
    end
    
    if(cost>=cost1) ,
        break;          //Use of break statement
    end
    cost1=cost;
    p1=p;
end
p =(p+p1)/2.0;
cost=40-8*p+p^2;       //Computes the cost
//print the result
printf("MINIMUM COST=%.2f AT p=%.1f\n",cost,p);