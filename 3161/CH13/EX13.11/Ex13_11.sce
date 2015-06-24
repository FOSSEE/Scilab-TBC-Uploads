clc;
//page 696
//problem 13.11

//The output equations are as follows v1 = s1 xor s2 xor s3 & v2 = s1 xor s3
//the no of bits in output mode(bits_out) is v*(L+K), v = no of outputs for commutatot = 2, L = length of input = 3 & K = no of memeory elements = 3
v = 2
L = 3
K = 3
bits_out = v*(L+K)

//Taking in, s1, s2 , s3, v1 & v2 as row matrix where each column represents its corresponding input or output, in means input
in = [0 1 0 1 0 0 0]

s1 = zeros(1,7)
s2 = zeros(1,7)
s3 = zeros(1,7)
v1 = zeros(1,7)
v2 = zeros(1,7)


for i = 2:7
    s3(i) = s2(i-1)
    s2(i) = s1(i-1)
    s1(i) = in(i-1)
    v1(i-1) = bitxor(s1(i),bitxor(s2(i),s3(i)))
    v2(i-1) = bitxor(s1(i),s3(i))
end

//Output matrix is out
out = zeros(1,12)
for i = [1 3 5 7 9 11]
    out(i) = v1((i+3)/2)
    out(i+1) = v2((i+3)/2)
end

disp('output is')
disp(out)
