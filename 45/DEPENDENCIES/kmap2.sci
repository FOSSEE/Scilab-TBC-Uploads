//this function minimizes a two vriable boolean expression using kmap
function bi =kmap2(k)
var=['A''B''' 'A''B' 'AB' 'AB''']
temp =1
for i=1:2  // intially checking for all 1's
   for j=1:2
       if k(i,j)==1 then
           temp = temp + 1;
       end
   end
end
v=0;
bi = ' ' ;
if temp == 5 then
    disp("The minimal expression is : 1');
    v=1;
else
for i= 1 : 2 // considering all 2 1's cases 
    if k(i,1) == 1 & k(i,2) == 1 then 
         if i== 1 then
                bi = strcat([ bi 'A'''] );v=1;        
            else 
                bi = strcat([ bi 'A']);v=1;         
            end
        bi = strcat([ bi " + " ]);
        end
    if k(1,i) == 1 & k(2,i) == 1 then       
            if i== 1 then
                bi = strcat([ bi 'B'''] );v=1;
            else 
                bi = strcat([ bi 'B']);v=1;
            end
        end
end
end;
one(1)=k(2,1);
f=2;m=2;i=1;
    for j=1:2
        one(f)=k(i,j)
        f=f+1;
    end
    i=2;
    for j=2:-1:1
        one(f)=k(i,j)
        f=f+1;
    end
one(6)=k(1,1);
if v==0 then // for isolated 1's 
    for i =2:5
        if one(i)==1 & one(i+1)== 0 & one(i-1) ==0 then
            if m>0
                bi = strcat([bi " + "]);
                end;
            bi = strcat([bi var(i-1)]);
            m=m+1;
       end
    end
end
endfunction // final result will be stored in bi