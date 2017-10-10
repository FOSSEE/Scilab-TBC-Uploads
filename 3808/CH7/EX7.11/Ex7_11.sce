//Chapter 07: Discrete Probability

clc;
clear;

spam_msg=2000           //no of spam messages
nspam_msg=1000       //no of messages that are not spam
o_msg_spam=400          //occurrence of stock in spam
o_msg_nspam=60        //occurrence of stock in non spam
o_msg1_spam=200      //occurrence of undervalued in spam
o_msg1_nspam=25      //occurrence of undervalued in non spam
threshold=0.9
p1=o_msg_spam/spam_msg
q1=o_msg_nspam/nspam_msg
p2=o_msg1_spam/spam_msg
q2=o_msg1_nspam/nspam_msg

r=(p1*p2)/(p1*p2+q1*q2)

if r>threshold then
    disp(r,'R=')
    disp('Reject')
end
