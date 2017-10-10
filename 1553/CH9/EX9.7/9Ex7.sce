//chapter 9 Ex 7

clc;
clear;
close;
//let the value be x
y=poly(0,'y');
for y=1:10
    if ((1/5)^(y))==nthroot(.008,3)
        mprintf("y=%d",y);
        break;
    end
end
ans=.25^y;
mprintf("\n ans=%.2f",ans);
