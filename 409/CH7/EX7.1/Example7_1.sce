clear ;
clc;
// Example 7.1
printf('Example 7.1\n\n');
//Page no.169
// Solution

v_ts = 105.0 ;// velocity of train wrt station-[cm/s]
v_mt = 30.0 ;// velocity of man wrt train-[cm/s]
v_hm = 2.0 ;// velocity of hot dough wrt man-[cm/s]
v_am = 1.0 ;// velocity of ant wrt man- [cm/s]
// By careful reading of problem you can see that ant is moving away from man's mouth at 1 cm/s , so ant's velocity wrt station is say v_as
v_as  =  v_ts + v_mt + v_am;
printf(' The ant is moving towards station at the rate of %.1f cm/s.\n',v_as);