clc;
//page 697
//problem 13.12

//The qeneratr matrix requires impulse response of the coder.
//This is the ourput generated when the initially reset coder is fed with a single 1.
//The no of bits in the output code = 2(1+3) = 8

//Taking in, s1, s2 , s3, v1 & v2 as row matrix where each column represents its corresponding input or output, in means input
in = [0 1 0 0 0]

s1 = zeros(1,5)
s2 = zeros(1,5)
s3 = zeros(1,5)
v1 = zeros(1,5)
v2 = zeros(1,5)


for i = 2:5
    s3(i) = s2(i-1)
    s2(i) = s1(i-1)
    s1(i) = in(i-1)
    v1(i-1) = bitxor(s1(i),bitxor(s2(i),s3(i)))
    v2(i-1) = bitxor(s1(i),s3(i))
end

//Output matrix is out
out = zeros(1,8)
for i = [1 3 5 7]
    out(i) = v1((i+3)/2)
    out(i+1) = v2((i+3)/2)
end

disp('impulse response is')
disp(out)

//Then generator matrix is G
G = [1 1 1 0 1 1 0 0 0 0 0 0;0 0 1 1 1 0 1 1 0 0 0 0;0 0 0 0 1 1 1 0 1 1 0 0]

//Note that, in G, impulse responses appear in staggered apper in a staggered manner in each row while the rest of the elements are 0.

//Now, output is b_o = b_i*G where input b_i =[1 0 1] 
b_i = [1 0 1]

b_o = b_i*G

//Here multiplication means Exor operation so whereever two occurs it should be changed to 1

for i = 1:12
        if  b_o(i) > 1 then
            b_o(i) = 0;
        end
end

disp('output is ')
disp(b_o)
disp('The output obtained is exactly same as example 13.1')

