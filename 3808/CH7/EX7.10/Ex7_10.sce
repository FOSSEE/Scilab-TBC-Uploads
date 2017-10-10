//Chapter 07: Discrete Probability

clc;
clear;

s_total_msg=2000     //spam messages total
spam_msg=250       //occurrence of 'Rolex' in spam
nspam_msg=5       //occurrence of 'Rolex' in not know to be spam
ns_total_msg=1000//not spam messages total
threshold=0.9
p=spam_msg/s_total_msg
q=nspam_msg/ns_total_msg
r=p/(p+q)

if r>threshold then
    disp(r,'R=')
    disp('Reject')
end
