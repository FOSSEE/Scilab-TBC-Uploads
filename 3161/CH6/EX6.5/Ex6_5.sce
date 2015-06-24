clc;
//page 381
//problem 6.5

//Given input signal is d
d = [0,1,1,1,0,1,0,1,1];

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//The answers obtained here are different from the ones mentioned in the textbook.
//The given answers have been checked rigorously and have been found out to be true.

//When precoded

//Signal b is initially assumed to be 0 
b = 0;

for i = 2:9
    b(i) = bitxor(b(i-1),d(i));
end

//Changing bit code to polar signal we get, 0 --> -1, 1 --> +1
for i = 1:9
    if b(i)==1 then
        bp(i) = 1;
    else
        bp(i) = -1;
    end
end

//Let initial value of Vd be 0
//Vd = 0;

for i = 2:9
    Vd(i) = bp(i) + bp(i-1);
end

//Converting polar signal to bit code we get, -2 --> 0, 0 --> 1, 2 --> 0
for i = 1:9
    if Vd(i)== -2 then
        da(i) = 0;
    elseif Vd(i)== 2 then
        da(i) = 0;
    else
        da(i) = 1;
    end
end

disp(da,'Decoded output when precoded is ')

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//When not precoded exor gate is not there

//Changing bit code to polar signal we get, 0 --> -1, 1 --> +1
for i = 1:9
    if d(i)==1 then
        dp(i) = 1;
    else
        dp(i) = -1;
    end
end

for i = 2:9
    Vd(i) = dp(i) + dp(i-1);
end

//Converting polar signal to bit code we get, -2 --> 0, 0 --> 1, 2 --> 1
for i = 2:9
    if Vd(i)== -2 then
        da(i) = 0;
    elseif Vd(i)== 2 then
        da(i) = 0;
    else
        da(i)= ~da(i-1);
    end
end

disp(da,'Decoded output when not precoded is ')











