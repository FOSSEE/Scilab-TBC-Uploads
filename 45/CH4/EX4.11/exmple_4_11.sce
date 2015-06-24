//example 4.11 
//uses functions kmap.sci and noof.sci so run them before running this program .. 
clc;
s=[0  1 1 1 1 ];
x1=[0 1 0 0 0 ];
x2=[0 0 1 0 0 ];
x3=[0 0 0 1 0 ];
for i=1:5
    if s(i)==1  then   // finding output A and B
        if x1(i) == 1  then
            a(i)=0;
            b(i)=1;
        elseif x2(i) == 1  then
            a(i)=1;
            b(i)=0;
        elseif x3(i) == 1 then
            a(i)=1;
            b(i)=1;
        else 
            a(i)=0;
            b(i)=0;
        end 
else
            a(i)=0;
            b(i)=0;    
end
end
for i = 1 : 5    //printin the state table 
        Y(i,1)=s(i);
        Y(i,2)=x1(i);
        Y(i,3)=x2(i);
        Y(i,4)=x3(i);
        Y(i,5)=a(i);
        Y(i,6)=b(i);
    end
disp('          Input             Output  ');
disp('   S     X1    X2    X3    A     B '); 
    disp(Y);
kmp =[0 0 0 0;0 0 0 1 ;0 0 0 1;0 0 0 1]; //finding minimized expressin using 4-varible kmap
    disp("The minimal expression of A from the following Kmap is :');
    kmapsx(kmp);
    kmp=[0 0 1 0;0 0 1 1 ;0 0 1 0;0 0 1 0]; //finding minimized expressin using 4-varible kmap
    printf('\n');
   disp( 'The minimal expression of B from the following Kmap is :')
   kmapsx(kmp);