//problem 3 pagenumber 4.38
//given
n=4;format(6);
z=['0111','1111'];
vref=5;//volt
//determine v0
r=vref/(2^n-1);
i=1;
while i<3
    v0=r*base2dec(z(i),2);
    disp('Output voltage '+string(z(i))+' = '+string(v0)+' volt');
    i=i+1;
end


