clc
clear
disp('example 12 1')
p=4000  //given kva of alternator
fnl1=50  //frequency on no load
fl1=47.5 //frequency on load
fnl2=50 //frequency on no load on second alternator
fl2=48  //frequency on load on second alternator
l=6000 //load given two to alternator
df1=fnl1-fl1  //change in 1 alternator frequency
df2=fnl2-fl2  //change in 2 alternator frequency
l1=df2*(l)/(df2+df1)  //load on 1 alternator
disp('a')
l2=l-l1
printf(" load on 1 alternator %.2fkW \n load on 2 alternator %.2fkW",l1,l2)
ml1=df2*p/df1   //load on 1 machine when machine 2 on full load
ll=ml1+p  
disp('b')
printf(" load supplied by machine 1 with full load on machine2 %dkW \n total load is %dkW",ml1,l1) 