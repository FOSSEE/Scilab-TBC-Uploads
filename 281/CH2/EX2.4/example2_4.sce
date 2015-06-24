disp('chapter 2 ex2.4')
disp('given')
disp("from 741 datasheet")
disp("Rimin=.3Mohm")
disp("Mmin=50000")
Rimin=300000
Mmin=50000
disp("For an voltage follower beta=1")
b=1
Zin=(1+Mmin*b)*Rimin
disp("minimum input impedence")
disp('ohms',Zin)