disp('a license plate contains two letters followed by three digits where first digit can not be zero') 
n=26; //number of english letters
n*n;  //number of ways of choosing two letters in the license plate
p=10; //number of digits (0-9)
(p-1)*p*p; //number of ways to select the three digits with the first digit not being zero
k=n*n*(p-1)*p*p;
disp(k,'total number of license plates that can be printed')

disp('a president ,a secretary and a treasurer has to be elected in an orga-nisation of 26 members.No person is elected to more than one postion')
t=26;  //total number of members in the organisation
j=t*(t-1)*(t-2); 
disp(j,'number of ways to elect the three officers (president,secretary,treasurer')